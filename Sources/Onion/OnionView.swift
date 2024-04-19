//
//  File.swift
//  
//
//  Created by Jun on 18/4/24.
//

import SwiftUI

public struct OnionView<Layer: Identifiable & Hashable & Equatable, Content: View>: View {
  public let onion: Onion<Layer>
  private var depth: Int = 0
  
  @Binding
  public var hiddenLayers: Set<Layer>
  
  @ViewBuilder
  public let builder: (Onion<Layer>, _ depth: Int, _ isHidden: Bool) -> Content
  
  public init(
    onion: Onion<Layer>,
    depth: Int = 0,
    hiddenLayers: Binding<Set<Layer>>,
    @ViewBuilder builder: @escaping (Onion<Layer>, _ depth: Int, _ isHidden: Bool) -> Content) {
    self.onion = onion
    self.depth = depth
    self._hiddenLayers = hiddenLayers
    self.builder = builder
  }
  
  public var body: some View {
    let isHidden = hiddenLayers.contains(onion.layer) == false
    
    builder(onion, depth, isHidden)
    
    if isHidden {
      ForEach(onion.layers) { layer in
        OnionView(
          onion: layer,
          depth: depth + 1,
          hiddenLayers: $hiddenLayers
        ) { layer, depth, isHidden in
          builder(layer, depth, isHidden)
        }
      }
    }
  }
}
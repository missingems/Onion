//
//  File.swift
//  
//
//  Created by Jun on 18/4/24.
//

import SwiftUI

public struct OnionView<Layer: Identifiable & Hashable & Equatable, Content: View>: View {
  public let onion: Onion<Layer>
  private var paths: [Onion<Layer>] = []
  
  @Binding
  public var hiddenLayers: Set<Layer>
  
  @ViewBuilder
  public let builder: (Onion<Layer>, _ paths: [Onion<Layer>], _ isHidden: Bool) -> Content
  
  public init(
    onion: Onion<Layer>,
    paths: [Onion<Layer>] = [],
    hiddenLayers: Binding<Set<Layer>>,
    @ViewBuilder builder: @escaping (Onion<Layer>, _ paths: [Onion<Layer>], _ isHidden: Bool) -> Content
  ) {
    self.onion = onion
    self.paths = paths
    self._hiddenLayers = hiddenLayers
    self.builder = builder
  }
  
  public var body: some View {
    let isHidden = hiddenLayers.contains(onion.layer)
    
    builder(onion, paths, isHidden)
    
    if !isHidden {
      ForEach(onion.onions) { onion in
        OnionView(
          onion: onion,
          paths: updatingOnions(paths, with: self.onion),
          hiddenLayers: $hiddenLayers
        ) { layer, paths, isHidden in
          builder(layer, paths, isHidden)
        }
      }
    }
  }
  
  private func updatingOnions(_ onions: [Onion<Layer>], with newOnion: Onion<Layer>) -> [Onion<Layer>] {
    var onions = onions
    onions.append(newOnion)
    return onions
  }
}

//
//  File.swift
//  
//
//  Created by Jun on 18/4/24.
//

import SwiftUI

public struct LazyOnionView<Layer: Identifiable & Hashable & Equatable, Content: View>: View {
  public let onion: Onion<Layer>
  private var depth: Int = 0
  
  @Binding
  public var hiddenLayers: Set<Layer>
  public let builder: (Onion<Layer>, _ depth: Int, _ isHidden: Bool) -> Content
  
  public var body: some View {
    let isHidden = hiddenLayers.contains(onion.layer) == false
    
    builder(onion, depth, isHidden)
    
    if isHidden {
      ForEach(onion.layers) { layer in
        LazyOnionView(
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

//
//  Onion.swift
//  Onion
//
//  Created by Jun on 18/4/24.
//

public final class Onion<Layer: Identifiable & Hashable & Equatable>: Identifiable {
  public var id: Layer { layer }
  public let layer: Layer
  public var layers: [Onion<Layer>] = []
  
  public init(
    layer: Layer,
    layers: [Onion<Layer>] = []
  ) {
    self.layer = layer
    self.layers = layers
  }
  
  public func flatten() async -> [Layer] {
    var layers: [Layer] = []
    
    func flatten(onion: Onion) {
      layers.append(onion.layer)
      
      for layer in onion.layers {
        flatten(onion: layer)
      }
    }
    
    let copy = self
    flatten(onion: copy)
    
    return layers
  }
}

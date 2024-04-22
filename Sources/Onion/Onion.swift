//
//  Onion.swift
//  Onion
//
//  Created by Jun on 18/4/24.
//

import Foundation

public final class Onion<Layer: Identifiable & Hashable>: Identifiable {
  public typealias LayerType = Layer
  public var id: LayerType { layer }
  public let isParent: Bool
  public let layer: LayerType
  public var onions: [Onion<LayerType>] = []
  
  public init(
    layer: Layer,
    onions: [Onion<Layer>] = []
  ) {
    self.layer = layer
    self.onions = onions
    isParent = onions.isEmpty == false
  }
  
  public func flattened() -> [Layer] {
    var _layers: [Layer] = []
    
    func flatten(_ onion: Onion<Layer>) {
      _layers.append(onion.layer)
      
      onion.onions.forEach { onion in
        flatten(onion)
      }
    }
    
    flatten(self)
    
    return _layers
  }
}

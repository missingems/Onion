//
//  Onion.swift
//  Onion
//
//  Created by Jun on 18/4/24.
//

public final class Onion<Layer: Identifiable & Hashable & Equatable>: Identifiable {
  public var id: Layer { self.layer }
  public let layer: Layer
  public var layers: [Onion<Layer>] = []
  
  public init(
    layer: Layer,
    layers: [Onion<Layer>] = []
  ) {
    self.layer = layer
    self.layers = layers
  }
}

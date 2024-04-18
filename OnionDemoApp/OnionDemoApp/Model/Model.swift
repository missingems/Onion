//
//  Folder.swift
//  OnionDemoApp
//
//  Created by Jun on 18/4/24.
//

import Foundation

struct Model: Identifiable & Hashable & Equatable {
  var id = UUID()
  let name: String
}

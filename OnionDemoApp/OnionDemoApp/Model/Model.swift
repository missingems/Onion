//
//  Folder.swift
//  OnionDemoApp
//
//  Created by Jun on 18/4/24.
//

import Foundation

struct Author: Identifiable & Hashable & Equatable {
  var id = UUID()
  let name: String
  let avatarImageName: String
}

struct Message: Identifiable & Hashable & Equatable {
  var id = UUID()
  let author: Author
  let message: String
}

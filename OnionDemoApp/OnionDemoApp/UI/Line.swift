//
//  Line.swift
//  OnionDemoApp
//
//  Created by Jun on 22/4/24.
//

import SwiftUI

struct Line: Shape{
  func path(in rect: CGRect) -> Path {
    var path = Path()
    path.move(to: CGPoint(x: 0, y: 0))
    path.addLine(to: CGPoint(x: 0, y: rect.height))

    return path
  }
}


//
//  ContentView.swift
//  OnionDemoApp
//
//  Created by Jun on 18/4/24.
//

import Onion
import SwiftUI

struct ContentView: View {
  @State
  private var hiddenLayers: Set<Message> = []
  
  var body: some View {
    NavigationView {
      ScrollView {
        LazyVGrid(columns: [GridItem()]) {
          VStack(alignment: .leading, spacing: 0) {
            ForEach(Message.stubs) { onion in
              OnionView(
                onion: onion,
                hiddenLayers: $hiddenLayers
              ) { onion, depth, isHidden in
                contentView(
                  onion,
                  depth: depth,
                  isHidden: isHidden
                )
              }
            }
          }
          .padding(.horizontal, 16.0)
        }
      }
      .navigationTitle("スレッド")
      .background(
        Color(.secondarySystemBackground),
        ignoresSafeAreaEdges: .all
      )
    }
  }
  
  @ViewBuilder
  private func contentView(_ onion: Onion<Message>, depth: Int, isHidden: Bool) -> some View {
    Button(action: {
      withAnimation {
        if hiddenLayers.contains(onion.layer) {
          hiddenLayers.remove(onion.layer)
        } else {
          hiddenLayers.insert(onion.layer)
        }
      }
    }, label: {
      messageRow(
        onion.layer,
        depth: depth, 
        isHidden: isHidden
      )
    })
    .disabled(onion.layers.isEmpty)
  }
  
  @ViewBuilder
  private func messageRow(_ message: Message, depth: Int, isHidden: Bool) -> some View {
    let isRoot = depth == 0
    
    HStack(spacing: 16.0) {
      if isRoot == false {
        ForEach(1...depth, id: \.self) { _ in
          Line()
            .stroke(style: .init(dash: [3]))
            .foregroundStyle(.separator)
            .frame(width: 1)
            .offset(x: 13.0)
        }
      }
      
      VStack(alignment: .leading) {
        HStack(alignment: .center, spacing: 5.0) {
          Image(message.author.avatarImageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .scaledToFill()
            .clipShape(.circle)
            .frame(width: 22, height: 22)
          
          Text(message.author.name.uppercased())
            .font(.caption)
            .fontWeight(.medium)
            .multilineTextAlignment(.leading)
            .foregroundStyle(Color.secondary)
        }
        
        Text(message.message)
          .font(.body)
          .multilineTextAlignment(.leading)
          .foregroundStyle(Color.primary)
          .frame(maxWidth: .infinity, alignment: .leading)
      }
      .padding(.horizontal, 11.0)
      .padding(.vertical, 13.0)
      .background(content: {
        if isRoot {
          if isHidden {
            LinearGradient(
              gradient: Gradient(colors: [Color(.tertiarySystemFill), Color(.secondarySystemFill)]),
              startPoint: .top,
              endPoint: .bottom
            )
          } else {
            LinearGradient(
              gradient: Gradient(colors: [.yellow.opacity(0.618), .orange.opacity(0.618)]),
              startPoint: .top,
              endPoint: .bottom
            )
          }
        } else {
          Color.clear
        }
      })
      .overlay(
        RoundedRectangle(cornerRadius: 13.0)
          .stroke(
            isRoot ? Color(.separator) : Color.clear,
            lineWidth: 1
          )
      )
      .cornerRadius(isRoot ? 13.0 : 0)
      .shadow(color: isRoot ? .black.opacity(0.05) : .clear, radius: 5.0, y: 5)
    }
    .padding(.top, isRoot ? 13.0 : 0)
  }
}

struct Line:Shape{
  func path(in rect: CGRect) -> Path {
    var path = Path()
    path.move(to: CGPoint(x: 0, y: 0))
    path.addLine(to: CGPoint(x: 0, y: rect.height))
    return path
  }
}

#Preview {
  ContentView()
}

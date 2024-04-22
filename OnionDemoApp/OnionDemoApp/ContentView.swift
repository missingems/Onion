//
//  ContentView.swift
//  OnionDemoApp
//
//  Created by Jun on 18/4/24.
//

import Onion
import SwiftUI

struct ContentView: View {
  enum MessageRowType: Equatable {
    case parent(numberOfChild: Int)
    case child
  }
  
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
              ) { onion, paths, isHidden in
                contentView(
                  onion,
                  paths: paths,
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
  
  private func doSomething(paths: [Onion<Message>], index: Int) {
    return withAnimation {
      hiddenLayers.insert(paths[index - 1].layer)
    }
  }
  
  @ViewBuilder
  private func contentView(_ onion: Onion<Message>, paths: [Onion<Message>], isHidden: Bool) -> some View {
    HStack(spacing: 16.0) {
      if paths.count != 0 {
        ForEach(1...paths.count, id: \.self) { index in
          Button(action: {
            doSomething(paths: paths, index: index)
          }, label: {
            Line()
              .stroke(style: .init(dash: [3]))
              .foregroundStyle(.separator)
              .frame(width: 10)
              .offset(x: 8.0)
          })
        }
      }
      
      VStack {
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
            type: onion.isParent ? .parent(numberOfChild: onion.onions.count) : .child,
            isHidden: isHidden
          )
        })
        .disabled(!onion.isParent)
      }
    }
  }
  
  @ViewBuilder
  private func messageRow(_ message: Message, type: MessageRowType, isHidden: Bool) -> some View {
    VStack(alignment: .leading, spacing: 5.0) {
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
        
        Spacer()
        
        if case let .parent(numberOfChild) = type, isHidden {
          Text("\(numberOfChild)")
            .font(.caption)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .padding(.horizontal, 5.0)
            .background(Color.black.opacity(0.3))
            .clipShape(.capsule)
        }
      }
      
      Text(message.message)
        .font(.body)
        .multilineTextAlignment(.leading)
        .foregroundStyle(Color.primary)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    .padding(.horizontal, 11.0)
    .padding(.vertical, 13.0)
    .background(
      content: {
        if type != .child, isHidden {
          LinearGradient(
            gradient: Gradient(colors: [.yellow.opacity(0.618/1), .orange.opacity(0.618/1)]),
            startPoint: .top,
            endPoint: .bottom
          )
        } else {
          Color(.systemBackground)
        }
      }
    )
    .overlay(
      RoundedRectangle(cornerRadius: 13.0).stroke(Color(.separator), lineWidth: 1)
    )
    .cornerRadius(13)
    .shadow(color: type != .child ? .black.opacity(0.05) : .clear, radius: 5.0, y: 5)
    .padding(.top, 8.0)
  }
}

#Preview {
  ContentView()
}

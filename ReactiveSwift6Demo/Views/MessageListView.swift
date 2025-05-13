//
//  MessageListView.swift
//  swift6
//
//  Created by Jose Donato Gomez Carrillo on 13/5/25.
//
import SwiftUI

struct MessageListView: View {
    let viewModel = MessageViewModel()

    var body: some View {
        List(viewModel.messages) { message in
            Text(message.content)
        }
        .navigationTitle("Messages")
    }
}

#Preview {
    MessageListView()
}

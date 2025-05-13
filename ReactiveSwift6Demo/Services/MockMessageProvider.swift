//
//  MessageStreamProvider.swift
//  swift6
//
//  Created by Jose Donato Gomez Carrillo on 13/5/25.
//

import Foundation

final class MockMessageProvider: MessageProvider {
    func streamMessages() -> AsyncStream<Message> {
        AsyncStream { continuation in
            Task {
                while !Task.isCancelled {
                    try? await Task.sleep(for: .seconds(2))
                    let newMessage = Message(content: Self.randomPlaceholder())
                    continuation.yield(newMessage)
                }
                continuation.finish()
            }
        }
    }

    private static func randomPlaceholder() -> String {
        [
            "Hello, Swift 6!",
            "Still here?",
            "Async/Await is neat.",
            "Testing message...",
            "Reactive without Rx.",
            "Concurrency feels good!"
        ].randomElement()!
    }
}

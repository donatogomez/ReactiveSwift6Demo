//
//  MessageViewModel.swift
//  swift6
//
//  Created by Jose Donato Gomez Carrillo on 13/5/25.
//
import Observation

@Observable
@MainActor
final class MessageViewModel {
    private let provider: MessageProvider
    var messages: [Message] = []

    init(provider: MessageProvider = MockMessageProvider()) {
        self.provider = provider

        Task {
            for await message in provider.streamMessages() {
                messages.append(message)
            }
        }
    }
}

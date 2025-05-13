//
//  MessageProvider.swift
//  MyReactiveApp
//
//  Created by Jose Donato Gomez Carrillo on 13/5/25.
//

protocol MessageProvider {
    func streamMessages() -> AsyncStream<Message>
}

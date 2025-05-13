//
//  swift6App.swift
//  swift6
//
//  Created by Jose Donato Gomez Carrillo on 13/5/25.
//

import SwiftUI

@main
struct MyReactiveApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                MessageListView()
            }
        }
    }
}

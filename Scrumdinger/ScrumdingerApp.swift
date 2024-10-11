//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Callum Inglis on 11/10/2024.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}

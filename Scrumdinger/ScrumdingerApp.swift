//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Callum Inglis on 11/10/2024.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}

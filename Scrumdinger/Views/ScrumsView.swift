//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Callum Inglis on 11/10/2024.
//

import SwiftUI


struct ScrumsView: View {
    @Binding var scrums: [DailyScrum]
    
    var body: some View {
        NavigationStack {
            List($scrums) { $scrum in
                NavigationLink(destination: DetailView(scrum: $scrum)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColour)
            }
            .navigationTitle("Daily Scrum")
            .toolbar {
                Button(action: {}) {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Scrum")
            }
        }
    }
}


struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: .constant(DailyScrum.sampleData))
    }
}

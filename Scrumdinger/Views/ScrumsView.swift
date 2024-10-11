//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Callum Inglis on 11/10/2024.
//

import SwiftUI


struct ScrumsView: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        List(scrums) { scrum in
            CardView(scrum: scrum)
                .listRowBackground(scrum.theme.mainColour)
        }
    }
}


struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}

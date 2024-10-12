//
//  ThemeView.swift
//  Scrumdinger
//
//  Created by Callum Inglis on 12/10/2024.
//

import SwiftUI


struct ThemeView: View {
    let theme: Theme
        
    var body: some View {
        Text(theme.name)
            .padding(4)
            .frame(maxWidth: .infinity)
            .background(theme.mainColour)
            .foregroundColor(theme.accentColour)
            .clipShape(RoundedRectangle(cornerRadius: 4))
    }
}


struct ThemeView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeView(theme: .buttercup)
    }
}

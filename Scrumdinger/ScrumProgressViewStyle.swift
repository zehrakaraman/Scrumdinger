//
//  ScrumProgressViewStyle.swift
//  Scrumdinger
//
//  Created by Zehra on 26.07.2021.
//

import SwiftUI

struct ScrumProgressViewStyle: ProgressViewStyle {
    var scrumColor: Color

    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10.0)
                .fill(scrumColor.accessibleFontColor)
                .frame(height: 20.0)
            ProgressView(configuration)
                .frame(height: 12.0)
                .padding(.horizontal)
        }
    }
}

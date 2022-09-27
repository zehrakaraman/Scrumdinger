//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Zehra on 16.07.2021.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    //
    //@State private var scrums = DailyScrum.data
    @ObservedObject private var data = ScrumData()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                //ScrumsView(scrums: DailyScrum.data)
                ScrumsView(scrums: $data.scrums) {
                    data.save()
                }
            }
            .onAppear {
                data.load()
            }
        }
    }
}

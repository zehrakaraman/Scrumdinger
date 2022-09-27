//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Zehra on 16.07.2021.
//

import Foundation
import SwiftUI

struct DailyScrum: Identifiable, Codable {
    let id: UUID
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var color: Color
    var history: [History]
    
    init(id:UUID = UUID(), title: String, attemdees: [String], lenghtInMinutes: Int, color: Color, history: [History] = [] ) {
        self.id = id
        self.title = title
        self.attendees = attemdees
        self.lengthInMinutes = lenghtInMinutes
        self.color = color
        self.history = history
    }
}

extension DailyScrum {
    static var data: [DailyScrum] { [
        DailyScrum(title: "Design", attemdees: ["Cathy", "Daisy", "Simon", "Jonathan"], lenghtInMinutes: 10, color: .yellow),
        DailyScrum(title: "App Dev", attemdees: ["Katie", "Gray", "Euna", "Luis", "Darla"], lenghtInMinutes: 5, color: .orange),
        DailyScrum(title: "Web Dev", attemdees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"], lenghtInMinutes: 1, color: .pink)
        ]
    }
}

extension DailyScrum {
    struct Data {
        var title: String = ""
        var attendees: [String] = []
        var lengthInMinutes: Double = 5.0
        var color: Color = .random
    }
    
    var data: Data {
        return Data(title: title, attendees: attendees, lengthInMinutes: Double(lengthInMinutes), color: color)
    }
    
    mutating func update(from data: Data) {
        title = data.title
        attendees = data.attendees
        lengthInMinutes = Int(data.lengthInMinutes)
        color = data.color
    }
}

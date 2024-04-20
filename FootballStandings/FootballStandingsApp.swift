//
//  FootballStandingsApp.swift
//  FootballStandings
//
//  Created by Bruno Delsing on 30/09/2023.
//

import SwiftUI

let apiKey = "14dc488b54b7447b9af7cc7b1da89ad6"

@main
struct FootballStandingsApp: App {
    var body: some Scene {
        WindowGroup {
            StandingsTabItemView()
        }
    }
}

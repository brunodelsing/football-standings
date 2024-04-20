//
//  StandingsTabItemView.swift
//  FootballStandings
//
//  Created by Bruno Delsing on 30/09/2023.
//

import SwiftUI
import XCAFootballDataClient

struct StandingsTabItemView: View {
    
    @State var selectedCompitition: Competition?
    
    var body: some View {
        NavigationSplitView {
            List(Competition.defaultCompetitions, id: \.self, selection: $selectedCompitition) {
                Text($0.name)
            }.navigationTitle("Competitions")
            
        } detail: {
            if let selectedCompitition {
                StandingsTableView(competition: selectedCompitition)
                    .id(selectedCompitition)
            } else {
                Text("Select a competition")
            }
        }
    }
}

#Preview {
    StandingsTabItemView()
}

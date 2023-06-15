//
//  ContentView.swift
//  Moonshot
//
//  Created by Anastasiia Solomka on 29.05.2023.
//

import SwiftUI

struct ContentView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    @AppStorage("showingGrid") private var showingGrid = true //saves state selected by user
    
    var body: some View {
        NavigationView {
            Group {
                if showingGrid {
                    MissionsGridView(astronauts: astronauts, missions: missions)
                } else {
                    MissionsListView(astronauts: astronauts, missions: missions)
                }
            }
                .navigationTitle("Moonshot")
                .background(.darkBackground)
                .preferredColorScheme(.dark)
                .toolbar {
                    Button {
                        showingGrid.toggle()
                    } label: {
                        if showingGrid {
                            Label("Show as list", systemImage: "list.dash")
                        } else {
                            Label("Show as grid", systemImage: "square.grid.2x2")
                        }
                    }
                }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

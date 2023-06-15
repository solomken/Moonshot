//
//  MissionsListView.swift
//  Moonshot
//
//  Created by Anastasiia Solomka on 01.06.2023.
//

import SwiftUI

struct MissionsListView: View {
    let astronauts: [String: Astronaut]
    let missions: [Mission]
    
    @State private var showingList = false
    
    var body: some View {
        List(missions) { mission in
            NavigationLink {
                MissionView(mission: mission, astronauts: astronauts)
            } label: {
                HStack {
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .padding()
                    
                    VStack(alignment: .leading) {
                        Text(mission.displayName)
                            .font(.headline)
                            .foregroundColor(.white)
                        
                        Text(mission.formattedLaunchDate)
                            .font(.caption)
                            .foregroundColor(.white.opacity(0.5))
                    }
                }
            }
            .listRowBackground(Color.darkBackground)
        }
        .listStyle(.plain)
    }
}

struct MissionsListView_Previews: PreviewProvider {
    static var previews: some View {
        MissionsListView(astronauts: Bundle.main.decode("astronauts.json"), missions: Bundle.main.decode("missions.json"))
            .preferredColorScheme(.dark)
    }
}

//
//  AstronautsScrollView.swift
//  Moonshot
//
//  Created by Anastasiia Solomka on 01.06.2023.
//

import SwiftUI

struct AstronautsScrollView: View {
    let crew: [MissionView.CrewMember]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(crew, id: \.role) { crewMember in
                    NavigationLink {
                        AstronautView(astronaut: crewMember.astronaut)
                    } label: {
                        VStack {
                            Image(crewMember.astronaut.id)
                                .resizable()
                                .frame(width: 104, height: 72)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .overlay (
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(.gray, lineWidth: 1)
                                )

                            Text(crewMember.astronaut.name)
                                .foregroundColor(.white)
                                .font(.headline)
                            
                            Text(crewMember.role)
                                .foregroundColor(.secondary)
                                .italic()
                        }
                        .padding(.horizontal, 5)
                    }
                }
            }
        }
    }
}

struct AstronautsScrollView_Previews: PreviewProvider {
    static var previews: some View {
        AstronautsScrollView(crew: [])
            .preferredColorScheme(.dark)
    }
}

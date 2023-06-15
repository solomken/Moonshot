//
//  RectangleDividerView.swift
//  Moonshot
//
//  Created by Anastasiia Solomka on 01.06.2023.
//

import SwiftUI

struct RectangleDividerView: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundColor(.lightBackGround)
            .padding(.vertical)
    }
}

struct RectangleDividerView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleDividerView()
    }
}

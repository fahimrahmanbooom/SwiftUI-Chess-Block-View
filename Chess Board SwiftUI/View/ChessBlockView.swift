//
//  ChessBlockView.swift
//  Chess Board SwiftUI
//
//  Created by Fahim Rahman on 11/26/21.
//

import SwiftUI

struct ChessBlockView: View {
    
    @State var color: Color
    
    var body: some View {
        Rectangle()
            .frame(width: UIScreen.main.bounds.size.width / 4, height: UIScreen.main.bounds.size.width / 4)
            .foregroundColor(color)
    }
}

struct RectengeleView_Previews: PreviewProvider {
    static var previews: some View {
        ChessBlockView(color: Color.black)
            .previewLayout(.sizeThatFits)
    }
}

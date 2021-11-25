//
//  ContentView.swift
//  Chess Board SwiftUI
//
//  Created by Fahim Rahman on 11/26/21.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    
    // number of columns
    let columns : [GridItem] = [ GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()) ]
    
    // numberOfBlocks
    let numberOfBlocks = Int(((UIScreen.main.bounds.size.height) * UIScreen.main.bounds.size.width) / ((UIScreen.main.bounds.size.width / 4) * (UIScreen.main.bounds.size.width / 4))) + 1
    
    var body: some View {
        // scrollview
        ScrollView(.vertical, showsIndicators: false) {
            // grid
            LazyVGrid(columns: columns, spacing: 0) {
                // loop
                ForEach(0..<numberOfBlocks) { index in
                    // check row and column and alternate colors
                    isEvenRow(index: index) ?
                    ChessBlockView(color: index % 2 == 0 ? Color.white : Color.black) :
                    ChessBlockView(color: index % 2 == 0 ? Color.black : Color.white)
                } //: loop
            } //: grid
        }.disabled(true) //: scrollview
    }
    // check for even row to alternate colors
    func isEvenRow(index: Int) -> Bool {
        (index / columns.count) % 2 == 0
    }
}


// MARK: - Preview Layout
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

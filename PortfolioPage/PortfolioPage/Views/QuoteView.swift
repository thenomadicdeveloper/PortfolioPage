//
//  QuoteView.swift
//  PortfolioPage
//
//  Created by Davin Henrik on 1/18/23.
//

import SwiftUI

struct QuoteView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("'I live to create...and I create with coding.'")
                .foregroundColor(.white)
                .font(.custom("Aladin-Regular", size: 45))
        }.padding()
    }
}

struct QuoteView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteView()
    }
}

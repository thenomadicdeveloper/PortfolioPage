//
//  SelfView.swift
//  PortfolioPage
//
//  Created by Davin Henrik on 1/18/23.
//

import SwiftUI

struct SelfView: View {
    var body: some View {
        VStack {
            Image("Davin")
                .resizable()
                .scaledToFit()
                .cornerRadius(15)
                .frame(minWidth: 300, maxHeight: 350)
        }
    }
}

struct SelfView_Previews: PreviewProvider {
    static var previews: some View {
        SelfView()
    }
}

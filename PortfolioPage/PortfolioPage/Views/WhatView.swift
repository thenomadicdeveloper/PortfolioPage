//
//  WhatView.swift
//  PortfolioPage
//
//  Created by Davin Henrik on 1/17/23.
//

import SwiftUI

struct WhatView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            HStack {
                Text("What I can do:")
                    .font(.title)
//                    .padding(.leading)
//                Spacer()
            }
            .padding([.top, .bottom])
            HStack {
                VStack(alignment: .leading) {
                    Text("Work in an agile environment")
                    Text("Brainstorm with design on UI/UX flow")
                    Text("Develop in a variety of languages.")
                }
//                Spacer()
            }
                    .font(.custom("CormorantGaramond-Regular", size: 20))
                    .foregroundColor(Color("AppGray2"))
                    .padding(.leading)
                    .fixedSize(horizontal: false, vertical: true)
                    .lineSpacing(5)
        }
    }
}

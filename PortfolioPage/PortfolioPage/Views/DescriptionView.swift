//
//  DescriptionView.swift
//  PortfolioPage
//
//  Created by Davin Henrik on 1/20/23.
//

import SwiftUI

struct DescriptionView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
                HStack {
                    Text("Who I am:")
                        .font(.title)
                    //                        .padding(.leading)
//                    Spacer()
                }
                .padding([.top, .bottom])
                HStack {
//                    Spacer()
                    VStack(alignment: .leading) {
                        Text("Reliable * Experienced * Knowledgeable")
                        Text("Able to jump in and read existing code.")
                        Text("Develop using TDD and MVVM.")
                        Text("Easily join a team setting or work independantly.")
                    }
//                    Spacer()
                }
                .font(.custom("CormorantGaramond-Regular", size: 20))
                .foregroundColor(.gray)
                .padding(.leading)
                .fixedSize(horizontal: false, vertical: true)
                .lineSpacing(10)
        }
//        .border(.white, width: 2)
    }
}

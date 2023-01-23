//
//  BodyView.swift
//  PortfolioPage
//
//  Created by Davin Henrik on 1/16/23.
//

import SwiftUI

struct BodyView: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack {
                    QuoteView()
                    HStack {
                        VStack(alignment: .leading) {
                            DescriptionView()
                            WhatView()
                        }
                        .padding([.top, .bottom])
                        .frame(width: geometry.size.width * 0.45, height: geometry.size.height * 0.5)
                        HStack(alignment: .center) {
                            SelfView()
                        }
                        .frame(width: geometry.size.width * 0.45)
                        .frame(height: geometry.size.height * 0.5)
                        Spacer()
                    }
                    .padding([.leading, .trailing])
                    Divider()
                    VStack {
                        PortfolioView()
                            .frame(width: geometry.size.width * 0.9)
                        PersonalProjectsView()
                            .frame(width: geometry.size.width * 0.9)
                        ContactView()
                            .frame(width: geometry.size.width * 0.9)
                    }
                }
                .foregroundColor(.white)
                .background(Color("AppGray"))
            }
        } .padding([.leading, .trailing])
    }
}

//
//  HomeView.swift
//  PortfolioPage
//
//  Created by Davin Henrik on 1/16/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
            VStack {
                RectangleView()
                HeaderView()
                RectangleView()
                BodyView()
            }
            .background(Color("AppGray"))
    }
}

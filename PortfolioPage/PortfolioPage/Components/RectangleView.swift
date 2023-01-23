//
//  RectangleView.swift
//  PortfolioPage
//
//  Created by Davin Henrik on 1/18/23.
//

import SwiftUI

struct RectangleView: View {
    @ObservedObject var viewModel = ViewModel()
    var body: some View {
        VStack {
            Rectangle()
                .animatableGradient(fromGradient: viewModel.gradient1, toGradient: viewModel.gradient2, progress: viewModel.progress)
                .ignoresSafeArea()
                .onAppear {
                    withAnimation(.linear(duration: 5.0).repeatForever(autoreverses: true)) {
                        viewModel.progress = 1.0
                    }
                }
        }
                .frame(maxHeight: 5)
    }
}

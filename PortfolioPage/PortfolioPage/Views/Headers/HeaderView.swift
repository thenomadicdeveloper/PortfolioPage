//
//  HeaderView.swift
//  PortfolioPage
//
//  Created by Davin Henrik on 1/16/23.
//

import SwiftUI

struct HeaderView: View {
    @ObservedObject var viewModel = ViewModel()
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text("Davin Henrik")
                        .font(.custom("CormorantGaramond-Regular", size: 48))
                    Text("Professional Software Developer")
                }
                    .foregroundColor(.white)
                    .font(.custom("CormorantGaramond-Regular", size: 25))
                    .padding(.leading)
                Spacer()
                VStack(spacing: 5) {
                    Text("iOS/macOS")
                        .foregroundColor(.red)
                    Text("React")
                        .foregroundColor(.blue)
                    Text("Javascript")
                        .foregroundColor(.yellow)
                    Text("SQLite")
                        .foregroundColor(.green)
                }
                .font(.system(size: 20))
                .padding(.trailing)
            }
        }
        .padding()
        .foregroundColor(.white)
        .frame(maxWidth: .infinity, maxHeight: 200)
    }
}

//
//  iOSView.swift
//  PortfolioPage
//
//  Created by Davin Henrik on 1/18/23.
//

import SwiftUI

struct iOSView: View {
    @Environment(\.presentationMode) var presentationMode
    @StateObject fileprivate var viewModel = PortfolioViewModel()
    
    let columns = [
        GridItem(.fixed(250)),
        GridItem(.fixed(250))
    ]
    var body: some View {
        VStack {
            HStack {
                Text("Click on the text:")
                    .font(.title)
                    .padding(.leading)
                Spacer()
                Button("Close", action: { presentationMode.wrappedValue.dismiss()
                })
                .padding(.trailing)
            }
            .padding([.top, .bottom])
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(viewModel.portfolio) { item in
                        VStack {
                            Image(item.title)
                                .resizable()
                                .scaledToFit()
                                .border(.black, width: 1)
                                .frame(maxWidth: 250, maxHeight: 200)
                                .padding()
                            Link("\(item.dataText)", destination:  URL(string: "\(item.dataLinks)")!)
                                .foregroundColor(.gray)
                        }
                    }
                }
            }
        }
    }
}
struct iOSView_Previews: PreviewProvider {
    static var previews: some View {
        iOSView()
    }
}

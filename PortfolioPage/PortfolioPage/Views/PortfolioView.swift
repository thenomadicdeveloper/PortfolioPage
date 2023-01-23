//
//  PortfolioView.swift
//  PortfolioPage
//
//  Created by Davin Henrik on 1/17/23.
//

import SwiftUI

struct PortfolioView: View {
    @Environment(\.presentationMode) var presentationMode
//
    
    var body: some View {
            VStack {
                VStack(alignment: .center) {
                    WellsTitle()
                        .padding(.top)
                        .frame(maxHeight: 800)
                }
                .font(.system(size: 20))
//                .sheet(isPresented: $viewModel.iOSActive, content: {
//                    iOSView()
//                })
            }
        }
    }
    
    struct WellsTitle: View {
        var body: some View {
            VStack {
                HStack {
                    Text("Professional Projects:")
                        .font(.title)
                        .padding(.leading)
                    Spacer()
                }
                .padding(.top)
            }
            .padding(.top)
            HStack(alignment: .top
            ) {
                VStack(alignment: .leading) {
                    Text("COMPANY: Wells Fargo Mobile Banking App")
                    Text("ROLE: Senior iOS Developer")
                    Text("PROJECT: BillPay Feature")
                        HStack {
                            Text("PROGRAMS/LANGUAGES: ")
                            Text("SwiftUI")
                        }
                    VStack(alignment: .leading) {
                        Text("UIKit")
                        Text("CocoaPods")
                        Text("CoreData")
                        Text("API Calls")
                    }.padding(.leading, 245)
                }
                .foregroundColor(Color("AppGray2"))
                .font(.custom("CormorantGaramond-Regular", size: 20))
                .padding(.leading)
                Spacer()
                WellsBody()
                    .padding(.top)
            }
        }
}

struct WellsBody: View {
    var body: some View {
            VStack(alignment: .center) {
                HStack(alignment: .center) {
                    Image("WellsOne")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(15)
                        .padding()
                    Image("WellsTwo")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(15)
                        .padding()
                    Image("WellsThree")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(15)
                        .padding()
                }
                .padding()
            }
            .font(.system(size: 20))
            .frame(alignment: .leading)
            .padding([.leading, .trailing])
        }
}

struct PersonalProjectsView: View {
    @State var iOSActive: Bool = false
    var body: some View {
        VStack {
            Divider()
            HStack {
                Text("Personal Projects:")
                    .font(.largeTitle)
                    .padding(.leading)
                Spacer()
            }
        }
        VStack {
            HStack {
                Text("Click on language for examples")
                    .font(.custom("CormorantGaramond-Regular", size: 20))
                    .foregroundColor(Color("AppGray2"))
                Spacer()
            }
            HStack(spacing: 20) {
                Button("iOS/macOS", action: {
                    iOSActive = true
                })
                .foregroundColor(.red)
            }
            .buttonStyle(.borderless)
            .font(.system(size: 20))
            .sheet(isPresented: $iOSActive, content: {
                iOSView()
            })
        }
        .padding()
    }
}

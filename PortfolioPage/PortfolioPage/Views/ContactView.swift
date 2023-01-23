//
//  ContactView.swift
//  PortfolioPage
//
//  Created by Davin Henrik on 1/20/23.
//

import SwiftUI

struct ContactView: View {
    var body: some View {
        VStack(alignment: .center) {
            Divider()
            HStack {
                Text("Contact:")
                    .font(.largeTitle)
                    .padding(.leading)
                Spacer()
            }
            Text("davinthedeveloper@gmail.com")
                .font(.title)
            Spacer()
        }
        .frame(minHeight: 150)
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}

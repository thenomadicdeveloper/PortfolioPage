//
//  ViewModel.swift
//  PortfolioPage
//
//  Created by Davin Henrik on 1/18/23.
//

import Foundation
import SwiftUI

class ViewModel: ObservableObject {
    @Published var iOSActive: Bool = false
    @Published var macOSActive: Bool = false
    @Published var reactActive: Bool = false
    @Published var javascriptActive: Bool = false
    @Published var sqliteActive: Bool = false
    @Published var progress: CGFloat = 0
    @Published var gradient1 = Gradient(colors: [.black, .white])
    @Published var gradient2 = Gradient(colors: [.green, .red])
}

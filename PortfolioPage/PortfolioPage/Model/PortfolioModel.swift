//
//  PortfolioModel.swift
//  PortfolioPage
//
//  Created by Davin Henrik on 1/17/23.
//

import Foundation

struct PortfolioModel: Identifiable {
    var id = UUID()
    var title: String
    var dataText: String
    var dataLinks: String
}

extension PortfolioModel {
    static let portfolioData = [
        PortfolioModel(
            title: "BioImg",
            dataText: "Face ID Authentication",
            dataLinks: "https://github.com/thenomadicdeveloper"
        ),
        PortfolioModel(
            title: "PRSImg",
            dataText: "Paper, Rock, Scissors Game",
            dataLinks: "https://github.com/thenomadicdeveloper/PaperRockScissors"
        ),
        PortfolioModel(
            title: "WFImg",
            dataText: "Wells Fargo App",
            dataLinks: "https://apps.apple.com/us/app/wells-fargo-mobile/id311548709"
        ),
        PortfolioModel(
            title: "CRUDImg",
            dataText: "Simple CRUD Example",
            dataLinks: "https://github.com/thenomadicdeveloper/CRUDExample"
        ),
        PortfolioModel(
            title: "BMIImg",
            dataText: "BMI Calculator",
            dataLinks: "https://github.com/thenomadicdeveloper"
        ),
        PortfolioModel(
            title: "CalcImg",
            dataText: "Re-created iPhone Calculator",
            dataLinks: "https://github.com/thenomadicdeveloper"
        )]
}

class PortfolioViewModel: ObservableObject {
    @Published var portfolio: [PortfolioModel] = PortfolioModel.portfolioData
}

//
//  CoinModel.swift
//  ByteCoin
//
//  Created by sei on 2022/11/15.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct CoinData: Codable {
    let rate: Double
    let asset_id_quote: String
    
    var price: String {
        return String(format: "%.2f", rate)
    }
}

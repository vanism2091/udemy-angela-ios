//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

protocol CoinManagerDelegate {
    func didFailWithError(_ manager: CoinManager, error: Error)
    func didUpdateCoinPrice(coin: CoinData)
}

struct CoinManager {
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    let apiKey = myApiKey
    var delegate: CoinManagerDelegate?
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]

    func fetchPrice(currency: String) {
        let urlString = "\(baseURL)/\(currency)"
        print(urlString)
        performRequest(with: urlString)
    }
    
    func performRequest(with urlString: String) {
        guard let url = URL(string: urlString) else {
            return
        }
        var urlRequest = URLRequest(url: url)
        urlRequest.setValue(apiKey, forHTTPHeaderField: "X-CoinAPI-Key")
        let task = URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            if error != nil {
                self.delegate?.didFailWithError(self, error: error!)
                return
            }
            guard let safeData = data, let coinData = self.parseJSON(safeData) else { return }
            delegate?.didUpdateCoinPrice(coin: coinData)
        }
        task.resume()
    }
    
    func parseJSON(_ data: Data) -> CoinData? {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(CoinData.self, from: data)
            return decodedData
        } catch {
            delegate?.didFailWithError(self, error: error)
            return nil
        }
        
    }
    func getCoinPrice(for currency: String){
        fetchPrice(currency: currency)
    }
}

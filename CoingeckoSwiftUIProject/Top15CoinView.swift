//
//  Top15CoinView.swift
//  CoingeckoSwiftUIProject
//
//  Created by 양승혜 on 9/9/24.
//

import SwiftUI

struct CoinData: Identifiable {
    let id = UUID()
    let rank: Int
    let name: String
    let market: String
    let price: String
    let change: String
    let iconName: String
}

struct Top15CoinView: View {
    
    let coins: [CoinData] = [
        CoinData(rank: 1, name: "Solana", market: "LTC", price: "$0.4175", change: "+21.18%", iconName: "Solana"),
        CoinData(rank: 1, name: "Solana", market: "LTC", price: "$0.4175", change: "+21.18%", iconName: "Solana"),
        CoinData(rank: 1, name: "Solana", market: "LTC", price: "$0.4175", change: "+21.18%", iconName: "Solana")
    ]
    
    var body: some View {
        List(coins) { coin in
            HStack {
                Text("\(coin.rank)")
                    .font(.subheadline)
                
                Image(systemName: "bitcoinsign.arrow.circlepath")
                    .resizable()
                    .frame(width: 30, height: 30)
                
                VStack(alignment: .leading) {
                    Text(coin.name)
                        .bold()
                    Text(coin.market)
                        .foregroundStyle(.gray)
                        .font(.caption)
                }
                Spacer()
                
            }
        }
    }
}

#Preview {
    Top15CoinView()
}

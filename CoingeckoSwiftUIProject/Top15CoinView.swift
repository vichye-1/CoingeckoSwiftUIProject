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
    
    let rows = [GridItem(.flexible(), spacing: 5), GridItem(.flexible(), spacing: 5), GridItem(.flexible(), spacing: 5)]
    
    let coins: [CoinData] = [
        CoinData(rank: 1, name: "Solana", market: "LTC", price: "$0.4175", change: "+21.18%", iconName: "Solana"),
        CoinData(rank: 2, name: "Solana", market: "LTC", price: "$0.4175", change: "+21.18%", iconName: "Solana"),
        CoinData(rank: 3, name: "Solana", market: "LTC", price: "$0.4175", change: "+21.18%", iconName: "Solana"),
        CoinData(rank: 4, name: "Solana", market: "LTC", price: "$0.4175", change: "+21.18%", iconName: "Solana"),
        CoinData(rank: 5, name: "Solana", market: "LTC", price: "$0.4175", change: "+21.18%", iconName: "Solana"),
        CoinData(rank: 6, name: "Solana", market: "LTC", price: "$0.4175", change: "+21.18%", iconName: "Solana"),
        CoinData(rank: 7, name: "Solana", market: "LTC", price: "$0.4175", change: "+21.18%", iconName: "Solana")
    ]
    
    var body: some View {
            ScrollView(.horizontal) {
                LazyHGrid(rows: rows, spacing: 10) {
                    ForEach(coins) { coin in
                        CoinCardView(coin: coin)
                            .frame(width: UIScreen.main.bounds.width * 0.8)
                    }
                }
                .padding()
            }
    }
}
struct CoinCardView: View {
    let coin: CoinData
    
    var body: some View {
        HStack(spacing: 10) {
            Text("\(coin.rank)")
                .foregroundStyle(.secondary)
            
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .frame(width: 20, height: 20)
            
            VStack(alignment: .leading, spacing: 5){
                Text(coin.name)
                    .font(.subheadline)
                Text(coin.market)
            }
            
            Spacer()
            
            VStack{
                Text(coin.price)
                Text(coin.change)
            }
            
        }
    }
}

#Preview {
    Top15CoinView()
}

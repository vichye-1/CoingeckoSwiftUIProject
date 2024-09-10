//
//  CoinTrendingView.swift
//  CoingeckoSwiftUIProject
//
//  Created by 양승혜 on 9/6/24.
//

import SwiftUI

struct CoinTrendingView: View {
    var body: some View {
        NavigationView {
            VStack {
                sectionTitle("My Favorite")
                    .navigationTitle("Crypto Coin")
                
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(0..<10) { item in
                            favoriteRectangle()
                        }
                    }
                }
                .scrollIndicators(.hidden)
                
                sectionTitle("Top15 Coin")
                
                
                
                sectionTitle("Top7 NFT")
            }
        }
        
        .padding()
    }
    
    private func sectionTitle(_ title: String) -> some View {
        VStack {
            Text(title)
                .bold()
                .font(.title2)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
    
    private func favoriteRectangle() -> some View {
        ZStack {
             RoundedRectangle(cornerRadius: 25.0)
                 .fill(.gray)
                 .frame(width: 200, height: 150)
                 .overlay {
                     VStack {
                         HStack {
                             Image(systemName: "bitcoinsign.circle")
                                 .resizable()
                                 .frame(width: 40, height: 40)
                             
                             VStack(alignment: .leading) {
                                 Text("Bitcoin")
                                     .bold()
                                 Text("BTC")
                                     .font(.caption)
                             }
                         }
                         .frame(maxWidth: .infinity, alignment: .leading)
                         .padding()
                         
                         Spacer()
                         
                         VStack {
                             Text("₩12,123,123")
                                 .frame(maxWidth: .infinity, alignment: .leading)
                             Text("+0.64%")
                                 .frame(maxWidth: .infinity, alignment: .leading)
                         }
                         .padding()
                         
                     }
                     
                 }
         }
    }
}

#Preview {
    CoinTrendingView()
}

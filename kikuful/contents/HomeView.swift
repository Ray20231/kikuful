//
//  HomeView.swift
//  kikuful
//
//  Created by 宮水三葉 on 2024/02/08.
//


import SwiftUI


struct HomeView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ScrollView {
            
            VStack(spacing: 10) {
                Text("ホーム，ギットハブの草のようなものを設置して，再生した日ごとに，再生時間に応じて色をぬる．test")
                ForEach(0..<10) { _ in
                    Rectangle()
                        .fill(colorScheme == .dark ? Color.dark2BackgroundColor : Color.light2BackgroundColor)
                        .frame(height: 100)
                        .cornerRadius(10) // 角を丸くする
                }
            }
            .padding() // VStack全体にパディングを追加
        }
        .background(colorScheme == .dark ? Color.darkMainBackgroundColor : Color.lightMainBackgroundColor)
        .frame(maxWidth: .infinity, maxHeight: .infinity) // ScrollViewを画面いっぱいに広げる
    }
}


#Preview {
    ContentView()
}

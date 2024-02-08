//
//  InputUrlView.swift
//  kikuful
//
//  Created by 宮水三葉 on 2024/02/08.
//

import SwiftUI


struct InputUrlView: View {
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                
                Button(action: {
                    // ボタンが押されたときのアクションをここに書く
                }) {
                    Text("webサイトを検索して登録")
                }
                .frame(maxWidth: .infinity, minHeight: 50, maxHeight: 50)
                .foregroundColor(.white)
                .background(Color.orange)
                .cornerRadius(10)
                Button(action: {
                    // ボタンが押されたときのアクションをここに書く
                }) {
                    Text("URLをプレイリストに登録")
                }
                .frame(maxWidth: .infinity, minHeight: 50, maxHeight: 50)
                .foregroundColor(.white)
                .background(Color.orange)
                .cornerRadius(10)
                
                
                Rectangle()
                    .fill(Color.orange)
                    .frame(height: 100)
                    .cornerRadius(10) // 角を丸くする
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

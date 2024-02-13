//
//  ProfileView.swift
//  kikuful
//
//  Created by 宮水三葉 on 2024/02/08.
//

import SwiftUI


struct MyLibraryView: View {
    @Environment(\.colorScheme) var colorScheme

//デフォルトでプレイリスト作成カードは非表示
    @State private var showingMakePlaylistView = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                HStack(spacing: 0) {
                    Text("マイプレイリスト")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(colorScheme == .dark ? Color.darkMainTextColor : Color.lightMainTextColor)
                    Spacer()
                    Button(action: {

                    }) {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.white)
                            .padding(20) // 画像のサイズ(20x20) + パディング(40x2) = 100x100

                    }
                    Button(action: {
                        showingMakePlaylistView = true
                    }) {
                        Image(systemName: "plus")
                            .resizable() // イメージのサイズを変更可能にする
                            .frame(width: 20, height: 20) // イメージのサイズを40x40に設定
                            .foregroundColor(.white) // イメージの色を白に設定
                            .padding(20)

                    }
                            .sheet(isPresented: $showingMakePlaylistView) {

                MakePlaylistView()

        }
                }
Rectangle()
    .frame(height: 1) // 線の太さを20pxに設定
    .foregroundColor(Color.gray) // 線の色を緑に設定
                
                Text("下記に作成したプレイリストを表示します．")
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

//
//  ContentView.swift
//  kikuful
//
//  Created by 宮水三葉 on 2024/02/08.
//
import SwiftUI

//親となる雛形
struct ContentView: View {
    //ダークモードライトモードを取得
    @Environment(\.colorScheme) var colorScheme
    

    var body: some View {
        
//        タブの見た目
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("ホーム")
                }

            InputUrlView()
                .tabItem {
                    Image(systemName: "plus.magnifyingglass")
                    Text("登録")
                }
            MyLibraryView()
                .tabItem {
                    Image(systemName: "books.vertical.fill")
                    Text("プレイリスト")
                }
//この設定ボタン，ホームの中に入れてもいいかも？
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("設定")
                }
        }
        
    }
}

//ホーム，ギットハブの草のようなものを設置して，再生した日ごとに，再生時間に応じて色をぬる．
//登録.ここで，各ウェブサイトの登録を行える．
//マイライブラリ.ここで登録したサイトを順番に見れる．順番は後から好きに入れ替えれる．プレイリストを複数つくれる．




#Preview {
    ContentView()
}

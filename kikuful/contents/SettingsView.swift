//
//  SettingsView.swift
//  kikuful
//
//  Created by 宮水三葉 on 2024/02/09.
//


import SwiftUI


struct SettingsView: View {
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Text("ここでは，デフォルトの設定を行えます．")
                ForEach(0..<10) { _ in
                    Rectangle()
                        .fill(colorScheme == .dark ? Color.dark2BackgroundColor : Color.lightMainBackgroundColor)
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

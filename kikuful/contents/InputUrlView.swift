//
//  InputUrlView.swift
//  kikuful
//
//  Created by 宮水三葉 on 2024/02/08.
//

import SwiftUI


struct InputUrlView: View {
    @Environment(\.colorScheme) var colorScheme
    let googleSearchURL = URL(string: "https://www.google.com/")!

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 10) {
                    NavigationLink(destination: SearchView(url: googleSearchURL)) {
                        Text("webサイトを検索して登録")
                    }
                    .frame(maxWidth: .infinity, minHeight: 50, maxHeight: 50)
                    .foregroundColor(colorScheme == .dark ? Color.darkMainTextColor : Color.lightMainTextColor)
                    .background(colorScheme == .dark ? Color.dark2BackgroundColor : Color.light2BackgroundColor)
                    .cornerRadius(10)
                    
                    Button(action: {
                        // ボタンが押されたときのアクションをここに書く
                    }) {
                        Text("URLをプレイリストに登録")
                    }
                    .frame(maxWidth: .infinity, minHeight: 50, maxHeight: 50)
                    .foregroundColor(colorScheme == .dark ? Color.darkMainTextColor : Color.lightMainTextColor)
                    .background(colorScheme == .dark ? Color.dark2BackgroundColor : Color.light2BackgroundColor)
                    .cornerRadius(10)
                    
                    Rectangle()
                        .fill(colorScheme == .dark ? Color.dark2BackgroundColor : Color.lightMainBackgroundColor)
                        .frame(height: 100)
                        .cornerRadius(10)
                }
                .padding()
            }
            .background(colorScheme == .dark ? Color.darkMainBackgroundColor : Color.lightMainBackgroundColor)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}


#Preview {
    ContentView()
}

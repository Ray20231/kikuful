//
//  SearchView.swift
//  kikuful
//
//  Created by 宮水三葉 on 2024/02/08.
//
import SwiftUI
import WebKit

struct SearchView: View {
    @Environment(\.colorScheme) var colorScheme
    var url: URL
    
    var body: some View {
        VStack(spacing:0) {
            OriginalToolbar()
                .padding(.bottom, -2.0)
            
            WebView(url: url)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .background(colorScheme == .dark ? Color.darkMainBackgroundColor : Color.lightMainBackgroundColor)
        .navigationBarTitle("ウェブ検索から探す")
    }
}



struct OriginalToolbar: View {
    //ダークモードライトモードを取得
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        HStack {
            Button(action: {
                // ページを戻るアクション
                // WebViewの戻るメソッドを呼び出すなどの処理を追加してください
            }) {
                Image(systemName: "chevron.backward")
                    .padding()
            }
            Button(action: {
                // ページを進むアクション
                // WebViewの進むメソッドを呼び出すなどの処理を追加してください
            }) {
                Image(systemName: "chevron.forward")
                    .padding()
            }
            
            Spacer()
            //ここ，ドロップダウンメニューにして，その場で再生するボタンと，プレイリストに追加するボタンとか複数表示剃るほうがいいかな？
            Button(action: {
                // ライブラリに追加アクション
                // ライブラリに追加するための処理を追加してください
            }) {
                HStack{
                    Text("プレイリストに追加する")
                    Image(systemName: "plus")
                }
                .foregroundColor(.white)
                .padding(5.0)
            }
            .background(Color.darkMainBackgroundColor)
            .cornerRadius(10)
            .padding(.trailing, 7.0)
        }
        .background(colorScheme == .dark ? Color.black : Color.white)
        .frame(height: 50)
    }
}




struct WebView: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.load(URLRequest(url: url))
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {}
}


#Preview {
    ContentView()
}

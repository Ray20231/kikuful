//
//  MakePlaylistView.swift
//  kikuful
//
//  Created by 宮水三葉 on 2024/02/13.
//

import SwiftUI

struct MakePlaylistView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            HStack {
                Spacer()

                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                }
                .padding()
            }
            Spacer()

            Text("新しいプレイリストの名前を決めてください")
                .font(.system(size: 18))
                .padding()

            TextField("プレイリスト名を入力", text: .constant(""))
                .font(.system(size: 30))
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                .padding(.horizontal)
            
            
            Button(action: {
                // プレイリスト作成処理
            }) {
                Text("作成")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.top)
            Spacer()
        }
        .padding()
                .background(
                    LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]), startPoint: .top, endPoint: .bottom)
                        .opacity(0.1)
                )

    }
}


#Preview {
    ContentView()
}

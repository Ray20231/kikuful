//
//  HomeView.swift
//  kikuful
//
//  Created by 宮水三葉 on 2024/02/08.
//


import SwiftUI
import AVFoundation

struct HomeView: View {
    @Environment(\.colorScheme) var colorScheme
    let synthesizer = AVSpeechSynthesizer() // AVSpeechSynthesizerのインスタンスを保持
    // 利用可能な音声（AVSpeechSynthesisVoice）の中から日本語（"ja-JP"）の音声だけを取得
    let japaneseVoices = AVSpeechSynthesisVoice.speechVoices().filter { $0.language == "ja-JP" }
    @State private var selectedVoiceIndex = 0 // 選択された音声のインデックス．初期は0番目

    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                // 音声選択ピッカー
                Picker("音声を選択", selection: $selectedVoiceIndex) {
                    ForEach(0..<japaneseVoices.count, id: \.self) { index in
                        Text(japaneseVoices[index].identifier).tag(index) // identifierを表示
                    }
                }
                .pickerStyle(WheelPickerStyle())

                // 音声読み上げボタン
                Button(action: {
                    self.speak(text: "こんにちは。今日の予定は，なんですか？私の予定は何もありません．", voice: japaneseVoices[selectedVoiceIndex])
                }) {
                    Text("日本語で挨拶")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }

                // その他のUI要素...
                Text("ホーム，ギットハブの草のようなものを設置して，再生した日ごとに，再生時間に応じて色をぬる．test")
                ForEach(0..<10) { _ in
                    Rectangle()
                        .fill(colorScheme == .dark ? Color.dark2BackgroundColor : Color.light2BackgroundColor)
                        .frame(height: 100)
                        .cornerRadius(10) // 角を丸くする
                }
            }
            .padding() // VStack全体にパディングを追加
            .onAppear {
                self.configureAudioSession() // ビューが表示されるときにオーディオセッションを設定
            }
        }
        .background(colorScheme == .dark ? Color.darkMainBackgroundColor : Color.lightMainBackgroundColor)
        .frame(maxWidth: .infinity, maxHeight: .infinity) // ScrollViewを画面いっぱいに広げる
    }
    
    // 音声読み上げを行うメソッド
    func speak(text: String, voice: AVSpeechSynthesisVoice) {
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = voice
        synthesizer.speak(utterance)
    }

    // オーディオセッションを設定するメソッド
    func configureAudioSession() {
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
        } catch {
            print("オーディオセッションの設定に失敗しました: \(error.localizedDescription)")
        }
    }
}

#Preview {
    ContentView()
}

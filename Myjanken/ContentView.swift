//
//  ContentView.swift
//  Myjanken
//
//  Created by 中尾司 on 2025/08/31.
//

import SwiftUI
struct ContentView: View {
    //じゃんけんの結果を格納する変数(0=初期画面、1=グー、2=チョキ、3=パー)
    @State private var jankenNumber = 0
    
    var body: some View {
        
        VStack {
            //スペースを追加
            Spacer()
            //じゃんけんの数字が0だったら
            if jankenNumber == 0 {
                //初期画面のテキストを表示
                Text("これからじゃんけんをします!")
                //下辺に余白を設定
                    .padding(.bottom)
            } else if jankenNumber == 1 {
                //じゃんけんの数字が1ならグー画像を指定
                //グー画像を指定
                Image("gu")
                //リサイズを指定
                    .resizable()
                //画面に収まるように,アスペクト比(縦横比)を維持する指定
                    .scaledToFit()
                //スペースを追加
                Spacer()
                //じゃんけんの種類を指定
                Text("グー")
                //下辺に余白を設定
                    .padding(.bottom)
            } else if jankenNumber == 2 {
                //じゃんけんの数字が2ならチョキ画像を指定
                //チョキ画像を指定
                Image("choki")
                //リサイズを指定
                    .resizable()
                //画面に収まるように,アスペクト比(縦横比)を維持する指定
                    .scaledToFit()
                //スペースを追加
                Spacer()
                //じゃんけんの種類を指定
                Text("チョキ")
                //下辺に余白を設定
                    .padding(.bottom)
            } else {
                //じゃんけんの数字が1,2以外ならパー画像を指定
                //パー画像を指定
                Image("pa")
                //リサイズを指定
                    .resizable()
                //画面に収まるように,アスペクト比(縦横比)を維持する指定
                    .scaledToFit()
                //スペースを追加
                Spacer()
                //じゃんけんの種類を指定
                Text("パー")
                //下辺に余白を設定
                    .padding(.bottom)
            }//if ここまで
            

            //『じゃんけんをする!』ボタン
            Button {
                //新しいじゃんけんの結果を一時的に格納する
                var newJankenNumber = 0
                
                //前回の結果と異なる場合のみ採用
                //repeatは繰り返しを意味する
                repeat {
                    //1,2,3の数値をランダムに算出(乱数)
                    newJankenNumber = Int.random(in: 1...3)
                    
                    //前回と同じ結果の時は、再度ランダムに数値を出す
                    //異なる結果の時は、repeatを抜ける
                } while jankenNumber == newJankenNumber
                
                //新しいじゃんけんの結果を格納
                jankenNumber = newJankenNumber
            } label: {
                //Buttonに表示する文字を指定
                Text("じゃんけんをする!")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(.pink)
                    .foregroundStyle(.white)
                
            }
        }
    }
}

#Preview {
    ContentView()
}

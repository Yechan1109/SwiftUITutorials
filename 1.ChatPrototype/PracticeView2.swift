//
//  PracticeView2.swift
//  1.ChatPrototype
//
//  Created by t2023-m0013 on 8/7/24.
//

import SwiftUI

struct PracticeView2: View {
    
    @State private var symbolIsHidden = true
      private var buttonTitle: String {
          return symbolIsHidden ? "Show" : "Hide"
      }
    
    var body: some View {
        //        VStack {
        //            Image(systemName: "wifi.router")
        //                .font(.system(size: 100))
        //                .symbolEffect(<#T##effect: DiscreteSymbolEffect & SymbolEffect##DiscreteSymbolEffect & SymbolEffect#>, value: <#T##Equatable#>)
        ////                .font(.largeTitle)
        ////                .fontWidth(.)
        ////                .imageScale(.large)
        //            Text("안녕하세요 박예찬님")
        //                .font(.headline)
        //                .padding()
        //            Text("환영합니다")
        //                .font(.largeTitle)
        //        }
        //    }
        
        VStack {
            if !symbolIsHidden {
                Image(systemName: "wifi.router")
                    .font(.system(size: 100))
                    .transition(.symbolEffect(.appear))
            }
            
            Button(buttonTitle) {
                symbolIsHidden.toggle()
            }
        }
    }
}
#Preview {
    PracticeView2()
}

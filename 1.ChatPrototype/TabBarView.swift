//
//  PraciceView3.swift
//  1.ChatPrototype
//
//  Created by t2023-m0013 on 8/8/24.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            PracticeView()
                .badge(2)
                .tabItem {
                    Label("Received", systemImage: "tray.and.arrow.down.fill")
                }
            PracticeView2()
                .tabItem {
                    Label("Sent", systemImage: "tray.and.arrow.up.fill")
                }
            ContentView()
                .badge("!")
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle.fill")
                }
            ContentView()
                .badge("!")
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle.fill")
                }
            ContentView()
                .badge("!")
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle.fill")
                }
            PracticeView2()
                .tabItem {
                    Label("Sent", systemImage: "tray.and.arrow.up.fill")
                }
            PracticeView2()
                .tabItem {
                    Label("Sent", systemImage: "tray.and.arrow.up.fill")
                }
            
        }
        
        Text("위치가 이상하네")
        
    }
}

#Preview {
    TabBarView()
}

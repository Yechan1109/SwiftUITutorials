//
//  ContentView.swift
//  1.ChatPrototype
//
//  Created by t2023-m0013 on 8/7/24.
//

import SwiftUI

struct ContentView: View {
    
    struct Ocean: Identifiable {
        let name: String
        let num: String
        let id = UUID()
    }
    
    private var oceans = [
        Ocean(name: "Pacific", num: "12"),
        Ocean(name: "Atlantic", num: "12"),
        Ocean(name: "Indian", num: "12"),
        Ocean(name: "Southern", num: "12"),
        Ocean(name: "Arctic", num: "12")
    ]

        
    var body: some View {
        VStack {
            TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
                Text("Tab Content 1").tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 1")/*@END_MENU_TOKEN@*/ }.tag(1)
                Text("Tab Content 2").tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 2")/*@END_MENU_TOKEN@*/ }.tag(2)
            }
            
            Text("Hi, all")
                .padding()
                .background(Color.red, in: RoundedRectangle(cornerRadius: 8))
                .padding()
                .background(Color.blue, in: RoundedRectangle(cornerRadius: 8))
                .padding()
                .background(Color.yellow, in: RoundedRectangle(cornerRadius: 8))
                .padding()
                .background(Color.green, in: RoundedRectangle(cornerRadius: 25))
                .padding()
            
            Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
                .padding()
                .background(Color.teal, in: RoundedRectangle(cornerRadius: 8))
                .padding()
                .background(Color.green, in: RoundedRectangle(cornerRadius: 8))
                .padding()
            
//            List(oceans) { // 여기요
//                
//                HStack {
//                    Text($0.name)
//                        .
//                }
//                Text($0.num)
//            }
            
            List(oceans) { ocean in
                HStack {
                    Text(ocean.name)
                    Spacer()
                    Text(ocean.num)
                }
            }
            
            Text("Test")
                .padding()
                .background(Color.blue, in:RoundedRectangle(cornerRadius: 8))
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            List(oceans) {
                Text($0.name)
                Text($0.num)

            }
//            NavigationSplitView {
//                /*@START_MENU_TOKEN@*/Text("Sidebar")/*@END_MENU_TOKEN@*/
//            } detail: {
//                /*@START_MENU_TOKEN@*/Text("Detail")/*@END_MENU_TOKEN@*/
//            }
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}


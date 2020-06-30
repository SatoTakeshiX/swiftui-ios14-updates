//
//  ContentView.swift
//  iOS13
//
//  Created by satoutakeshi on 2020/06/30.
//  Copyright © 2020 satoutakeshi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ListView()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("List")
                }
            SettingView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ListView: View {
    var body: some View {
        NavigationView {
            Form {
                ForEach(0 ..< 10) { index in
                    NavigationLink(destination: Text("detaile: \(index) cell")) {
                        HStack {
                            Image(systemName: "heart.fill")
                            Text("\(index)")
                        }
                    }
                }
            }
            .navigationBarTitle("iOS13")
        }
    }
}

struct SettingView: View {
    var body: some View {
        Text("Settings Page")
            .font(.largeTitle)
            .fontWeight(.heavy)
            .underline()
    }
}


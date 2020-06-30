//
//  ContentView.swift
//  Shared
//
//  Created by satoutakeshi on 2020/06/30.
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

                    NavigationLink(
                        destination: Text("detail: \(index) cell"),
                        label: {
                            HStack {
                                Image(systemName: "heart.fill")
                                Text("\(index)")
                            }
                        })
                }
            }
            .navigationTitle("iOS14")
        }

    }
}

struct SettingView: View {
    var body: some View {
        NavigationView {
            Form {
                ForEach(0 ..< 10) { index in
                    Text("index: \(index)")
                }
            }
            .navigationTitle("Settings")
        }

    }
}

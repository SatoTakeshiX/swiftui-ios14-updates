//
//  SideBarView.swift
//  iOS14
//
//  Created by satoutakeshi on 2020/06/30.
//

import SwiftUI

struct SideBarView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: Text("Detail").font(.largeTitle)) {
                Text("Master")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
            }
            .navigationBarTitle("iOS 14", displayMode: .large)
            Text("First Screen")
                .font(.largeTitle)
                .fontWeight(.heavy)
            Text("Second Screen")
                .font(.largeTitle)
                .fontWeight(.heavy)
        }
    }
}

struct SideBarView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SideBarView()
        }
    }
}

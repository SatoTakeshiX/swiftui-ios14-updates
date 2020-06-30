//
//  SideBarView.swift
//  iOS13
//
//  Created by satoutakeshi on 2020/06/30.
//  Copyright © 2020 satoutakeshi. All rights reserved.
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
            .navigationBarTitle("iOS 13", displayMode: .large)
            Text("First Screen")
                .font(.largeTitle)
                .fontWeight(.heavy)
        }
        .padding(0.5)
    }
}

struct SideBarView_Previews: PreviewProvider {
    static var previews: some View {
        SideBarView()
    }
}

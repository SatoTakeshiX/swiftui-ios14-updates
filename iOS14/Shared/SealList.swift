//
//  SealList.swift
//  iOS14
//
//  Created by satoutakeshi on 2020/06/30.
//

import SwiftUI

struct SealList: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0 ..< 100) { _ in 
                    Image("seal_\(Int.random(in: 1 ... 3))")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            }
        }
    }
}

struct SealList_Previews: PreviewProvider {
    static var previews: some View {
        SealList()
    }
}

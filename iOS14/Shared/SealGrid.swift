//
//  SealGrid.swift
//  iOS14
//
//  Created by satoutakeshi on 2020/07/01.
//

import SwiftUI

struct SealGrid: View {
    let columns = [
        GridItem(spacing: 0),
        GridItem(spacing: 0),
        GridItem(spacing: 0)
    ]
    let mim100Colums = [
        GridItem(.adaptive(minimum: 100))]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: mim100Colums, spacing: 0) {
                ForEach(0 ..< 100) { _ in
                    Image("seal_\(Int.random(in: 1 ... 3))")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            }
        }
    }
}

struct SealGrid_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SealGrid()
                .previewDevice(PreviewDevice(rawValue: "iPhone X"))
            SealGrid()
                .previewDevice(PreviewDevice(rawValue: "iPad8,1"))
        }
    }
}

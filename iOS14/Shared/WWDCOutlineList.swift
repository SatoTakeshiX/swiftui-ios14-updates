//
//  WWDCOutlineList.swift
//  iOS14
//
//  Created by satoutakeshi on 2020/07/01.
//

import SwiftUI

struct WWDCCategory: Identifiable {
    let id = UUID()
    let category: String
    let items: [WWDCItem]
}

struct WWDCItem: Identifiable {
    let id = UUID()
    let title: String
    let children: [WWDCItem]?
}

// https://developer.apple.com/videos/
let wwdcContents: [WWDCCategory] = [
    WWDCCategory(category: "Swift", items: [
        WWDCItem(title: "Swift in Xcode 12", children: [
            WWDCItem(title: "What's new in Swift", children: nil),
            WWDCItem(title: "Swift packages: Resources and localization", children: nil),
            WWDCItem(title: "Distribute binary frameworks as Swift packages", children: nil),
            WWDCItem(title: "Explore logging in Swift", children: nil)
        ]),
        WWDCItem(title: "Build great apps in SwiftUI", children: [
            WWDCItem(title: "Introduction to SwiftUI", children: nil),
            WWDCItem(title: "What's new in SwiftUI", children: nil),
            WWDCItem(title: "Build complications in SwiftUI", children: nil),
            WWDCItem(title: "App essentials in SwiftUI", children: nil),
            WWDCItem(title: "Visually edit SwiftUI views", children: nil),
            WWDCItem(title: "Stacks, Grids, and Outlines in SwiftUI", children: nil),
            WWDCItem(title: "Build a SwiftUI view in Swift Playgrounds", children: nil),
            WWDCItem(title: "Build document-based apps in SwiftUI", children: nil),
            WWDCItem(title: "Data Essentials in SwiftUI", children: nil),
            WWDCItem(title: "Build SwiftUI views for widgets", children: nil)
        ])
    ])
]


struct WWDCOutlineList: View {
    var body: some View {
        List {
            ForEach(wwdcContents) { content in
                Section(header: Text("\(content.category)")) {
                    OutlineGroup(content.items, children: \.children) { item in
                        Text(item.title)
                    }
                }
            }
        }
    }
}

struct WWDCOutlineList_Previews: PreviewProvider {
    static var previews: some View {
        WWDCOutlineList()
    }
}

//
//  BottomBar.swift
//  BottomBar
//
//  Created by Bezhan Odinaev on 7/2/19.
//  Copyright © 2019 Bezhan Odinaev. All rights reserved.
//

import SwiftUI

public struct BottomBar : View {
    @Binding public var selectedIndex: Int
    public let items: [BottomBarItem]
    public let click: ((Int) -> Void)?
    
    public init(selectedIndex: Binding<Int>, items: [BottomBarItem], click: ((Int) -> Void)?) {
        self._selectedIndex = selectedIndex
        self.items = items
        self.click = click
    }
    
    public init(selectedIndex: Binding<Int>, @BarBuilder items: () -> [BottomBarItem], click: ((Int) -> Void)?){
        self = BottomBar(selectedIndex: selectedIndex, items: items(), click: click)
    }
    
    public init(selectedIndex: Binding<Int>, item: BottomBarItem, click: ((Int) -> Void)?){
        self = BottomBar(selectedIndex: selectedIndex, items: [item], click: click)
    }
    
    
    func itemView(at index: Int) -> some View {
        Button(action: {
            withAnimation {
                self.click?(index)
            }
        }) {
            BottomBarItemView(selected: self.$selectedIndex, index: index, item: items[index])
        }
    }
    
    public var body: some View {
        HStack(alignment: .center) {
            ForEach(0..<items.count) { index in
                self.itemView(at: index)
                
                if index != self.items.count-1 {
                    Spacer()
                }
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 13)
//        .animation(.default)
    }
}

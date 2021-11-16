//
//  BottomBarItemView.swift
//  BottomBar
//
//  Created by Bezhan Odinaev on 7/2/19.
//  Copyright © 2019 Bezhan Odinaev. All rights reserved.
//

import SwiftUI

public struct BottomBarItemView: View {
    @Binding var selected : Int
    public let index: Int
    public let item: BottomBarItem
    
    public var body: some View {
        HStack (alignment: .center) {
            VStack{
                item.icon
    //                .imageScale(.large)
                    .font(.system(size: isSelected ? item.size : item.size * 0.98, weight: .heavy, design: .default))
                    .foregroundColor(isSelected ? item.color : item.defaultColor)
                    .overlay(
                        RoundedRectangle(cornerRadius: isSelected ? item.size : item.size * 0.9)
                            .stroke(isSelected ? item.color : .clear, lineWidth: 1.5)
                    )
                if isSelected && item.title != "" {
                    Text(item.title)
                        .foregroundColor(item.color)
                        .font(.caption)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
            }
        }
//        .padding()
//        .background(
//            Capsule()
//                .fill(isSelected ? item.color.opacity(0.2) : Color.clear)
//        )
    }
    
    var isSelected : Bool{
        selected == index
    }
    
}

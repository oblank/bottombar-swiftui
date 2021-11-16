//
//  BottomBarItem.swift
//  BottomBar
//
//  Created by Bezhan Odinaev on 7/2/19.
//  Copyright © 2019 Bezhan Odinaev. All rights reserved.
//

import SwiftUI

public struct BottomBarItem {
    public let icon: Image
    public let title: String
    public let color: Color
    public let defaultColor: Color
    public let size: CGFloat
    
    public init(icon: Image,
                title: String,
                color: Color,
                defaultColor: Color,
                size: CGFloat
    ){
        self.icon = icon
        self.title = title
        self.color = color
        self.defaultColor = defaultColor
        self.size = size
    }
    
    public init(icon: String,
                title: String,
                color: Color,
                defaultColor: Color,
                size: CGFloat) {
        self = BottomBarItem(icon: Image(systemName: icon),
                             title: title,
                             color: color,
                             defaultColor: defaultColor,
                             size: size
        )
    }
}

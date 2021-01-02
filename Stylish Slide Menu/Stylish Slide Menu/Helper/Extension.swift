//
//  Extension.swift
//  Stylish Slide Menu
//
//  Created by 中筋淳朗 on 2020/12/16.
//

import SwiftUI



extension Color {
    
    static let heartPink = Color("heartPink")
    
    static let lightBlue = Color("lightBlue")
    static let darkBlue = Color("darkBlue")
    
    
    static let blueGradient = LinearGradient(gradient: Gradient(colors: [Color.darkBlue, Color.lightBlue]), startPoint: .topTrailing, endPoint: .bottomLeading)
}


extension UIScreen {
    
    static let screenWidth = UIScreen.main.bounds.width
    static let screenHeight = UIScreen.main.bounds.height
}

extension CGFloat {
    
    static let postWidth = UIScreen.screenWidth - 90
    static let postHeight = (UIScreen.screenWidth - 90)
    
    static let cardWidth = UIScreen.screenWidth + 100
    static let cardHeight = UIScreen.screenHeight - 190
}

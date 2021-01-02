//
//  MenuItemView.swift
//  Stylish Slide Menu
//
//  Created by 中筋淳朗 on 2020/12/16.
//

import SwiftUI

struct MenuItemView: View {
    
    // MARK: - Property
    
    let imageName: String
    let title: String
    
    
    // MARK: - Body
    
    var body: some View {
        HStack (spacing: 14) {
            Image(systemName: imageName)
            
            Text(title)
                .font(.system(size: 22))
        } //: HStack
    }
}

// MARK: - Preview

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  PostView.swift
//  Stylish Slide Menu
//
//  Created by 中筋淳朗 on 2020/12/16.
//

import SwiftUI

struct PostView: View {
    
    // MARK: - Property
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            // MARK: - Background
            Rectangle()
                .fill(Color.white)
                .frame(width: CGFloat.postWidth, height: CGFloat.postHeight)
            
            VStack {
                // MARK: - User Info
                HStack (spacing: 16) {
                    Image("profile")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    
                    VStack (alignment: .leading, spacing: 4) {
                        Text("Katherine SwiftUI")
                        
                        Text("United Kingdom")
                            .foregroundColor(Color.black.opacity(0.5))
                    } //: VStack
                    .font(.system(size: 16))
                    
                    Spacer()
                } // HStack
                
                // MARK: - Post Text
                Text("They've got a huge variety of mind-blowing flavours like Lime Apple, Lemon, and Tiramisu... Which, TBH, might make it a little hard to decide on just one.")
                    .foregroundColor(.gray)
                    .font(.system(size: 15, weight: .light))
                    .lineSpacing(2)
                    .padding(.vertical, 10)
                
                // MARK: - Post Image
                ZStack (alignment: .topLeading) {
                    Image("post")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 120)
                        .clipped()
                    
                    Image(systemName: "rectangle.on.rectangle")
                        .foregroundColor(Color.black.opacity(0.65))
                        .padding(8)
                } //: ZStack
                
            } //: VStack
            .padding(22)
            .frame(width: CGFloat.postWidth)
        } //: ZStack
    }
}

// MARK: - Preview

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

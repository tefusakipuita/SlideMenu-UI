//
//  SlideMenu.swift
//  Stylish Slide Menu
//
//  Created by 中筋淳朗 on 2020/12/16.
//

import SwiftUI

struct SlideMenuView: View {
    
    // MARK: - Property
    
    @Binding var showSlideMenu: Bool
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            // MARK: - Card 1
            RoundedRectangle(cornerRadius: 40)
                .fill(Color.blueGradient)
                .frame(width: CGFloat.cardWidth, height: CGFloat.cardHeight)
                .rotationEffect(Angle(degrees: showSlideMenu ? 14 : 0))
                .offset(x: showSlideMenu ? -CGFloat.cardWidth/2 + 90 : -CGFloat.cardWidth)
                .shadow(color: Color.black.opacity(0.4), radius: 14, x: 12, y: 18)
                .animation(showSlideMenu ? Animation.spring().delay(0.1) : Animation.spring().delay(0.5))
            
            // MARK: - Card 2
            ZStack (alignment: .topTrailing) {
                RoundedRectangle(cornerRadius: 40)
                    .fill(Color.blueGradient)
                    .frame(width: CGFloat.cardWidth, height: CGFloat.cardHeight)
                
                Button(action: {
                    showSlideMenu = false
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                        .font(.system(size: 23, weight: .semibold, design: .rounded))
                        .padding(30)
                        .rotationEffect(Angle(degrees: -8))
                        .offset(x: -20)
                }) //: Button
                 
            } //: ZStack
            .scaleEffect(1.08)
            .rotationEffect(Angle(degrees: showSlideMenu ? 8 : 0))
            .offset(x: showSlideMenu ? -CGFloat.cardWidth/2 + 45 : -CGFloat.cardWidth)
            .shadow(color: Color.black.opacity(0.4), radius: 14, x: 12, y: 18)
            .animation(showSlideMenu ? Animation.spring().delay(0.2) : Animation.spring().delay(0.4))
            
            // MARK: - Menu
            VStack (alignment: .leading) {
                // MARK: - Profile
                Image("profile")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .cornerRadius(20)
                    .padding(.bottom, 8)
                
                Text("Hello")
                    .font(.system(size: 18, weight: .light))
                
                Text("Katherine SwiftUI")
                    .font(.system(size: 24))
                    .padding(.bottom, 70)
                
                // MARK: - Menu
                MenuItemView(imageName: "icloud.and.arrow.down", title: "Another App")
                    .padding(.bottom, 10)
                
                MenuItemView(imageName: "star", title: "Rate Us")
                    .padding(.bottom, 10)
                
                MenuItemView(imageName: "questionmark.circle", title: "Support")
                    .padding(.bottom, 10)
                
                MenuItemView(imageName: "gear", title: "Settings")
                
                // MARK: - Premium
                HStack {
                    Image(systemName: "flame")
                    
                    Text("Go Premium".uppercased())
                } //: HStack
                .padding(.horizontal)
                .padding(.vertical, 10)
                .background(
                    Capsule()
                        .stroke(lineWidth: 1)
                )
                .padding(.top, 70)
                
                
            } //: VStack
            .foregroundColor(.white)
            .offset(x: showSlideMenu ? -90 : -UIScreen.screenWidth)
            .animation(showSlideMenu ? Animation.spring().delay(0.4) : Animation.spring().delay(0.1))
            
        } //: ZStack
    }
}

// MARK: - Preview

struct SlideMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

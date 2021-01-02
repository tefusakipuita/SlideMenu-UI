//
//  ContentView.swift
//  Stylish Slide Menu
//
//  Created by 中筋淳朗 on 2020/12/16.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Property
    
    @State var showSlideMenu = false
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            // MARK: - Background Image
            Image("bg")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .offset(x: -30)
            
            VStack {
                // MARK: - Top Left Button
                HStack {
                    Button(action: {
                        showSlideMenu = true
                    }, label: {
                        Image(systemName: "cursorarrow.click.2")
                            .foregroundColor(Color.black.opacity(0.8))
                            .font(.system(size: 22, weight: .light, design: .rounded))
                            .padding(10)
                            .background(
                                Circle()
                                    .fill(Color.white.opacity(0.65))
                            )
                    }) //: Button
                    
                    Spacer()
                } //: HStack
                .padding(.horizontal)
                .padding(.top)
                
                VStack (spacing: 6) {
                    // MARK: - Top Right Date
                    HStack {
                        Spacer()
                        
                        Text("2020 / 12.16 / 10:33")
                            .foregroundColor(Color.black.opacity(0.9))
                    } //: HStack
                    .padding(.horizontal)
                    
                    // MARK: - Under Line
                    HStack (spacing: 0) {
                        Spacer()
                        
                        Circle()
                            .fill()
                            .frame(width: 6, height: 6)
                        
                        Rectangle()
                            .fill()
                            .frame(width: 300, height: 0.6)
                    } //: HStack
                } //: VStack
                
                Spacer()
                
                // MARK: - Heart
                HStack {
                    Spacer()
                    
                    Image(systemName: "heart.fill")
                        .foregroundColor(.heartPink)
                        .font(.system(size: 26, weight: .bold, design: .rounded))
                        .padding(17)
                        .background(
                            Circle()
                                .fill(Color.white)
                        )
                } //: HStack
                .padding(.horizontal, 40)
                .padding(.bottom, 16)
                
                // MARK: - Post View
                PostView()
                    .padding(.bottom, 12)
                
            } //: VStack
            .frame(width: UIScreen.screenWidth)
            
            
            // MARK: - Dark Mask
            Color.black.opacity(0.5)
                .edgesIgnoringSafeArea(.all)
                .opacity(showSlideMenu ? 1 : 0)
                .animation(.easeOut)
                .onTapGesture {
                    showSlideMenu = false
                }
            
            // MARK: - Slide Menu
            SlideMenuView(showSlideMenu: $showSlideMenu)
            
        } //: ZStack
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

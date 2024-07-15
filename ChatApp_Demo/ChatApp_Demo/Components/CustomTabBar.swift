//
//  CustomTabBar.swift
//  ChatApp_Demo
//
//  Created by sankar on 04/07/24.
//

import SwiftUI

struct MainTabbedView: View {
     @State var selectedTab = 0
    
     var body: some View {
         ZStack(alignment: .bottom){
            
             withAnimation {
             TabView(selection: $selectedTab) {
                 ZStack {
                     LinearGradient(gradient: Gradient(colors: [.purple.opacity(0.8), Color(.systemCyan)]), startPoint: .leading, endPoint: .trailing).edgesIgnoringSafeArea(.all)
                     BioView()
                         
                 }.tag(0)
                 ZStack {
                     LinearGradient(gradient: Gradient(colors: [.purple.opacity(0.8), .blue.opacity(0.8)]), startPoint: .leading, endPoint: .trailing).edgesIgnoringSafeArea(.all)
                     trailingCardImageView()
                        
                 }.tag(1)
             }
                }
             ZStack{
                 HStack{
                     ForEach((TabbedItems.allCases), id: \.self){ item in
                         
                             Button{
                                 withAnimation {
                                     selectedTab = item.rawValue
                                 }
                             } label: {
                                 CustomTabItem(imageName: item.iconName, title: item.title, isActive: (selectedTab == item.rawValue))
                              }
                         
                     }
                 }
                 .padding(6)
             }
             .frame(width: 350 ,height: 70)
//             .background(.purple.opacity(0.2))
//             .cornerRadius(25)
             .padding(.horizontal, 26)
         }

       
    }
}





extension MainTabbedView{
    func CustomTabItem(imageName: String, title: String, isActive: Bool) -> some View{
        HStack(spacing: 10){
            Spacer()
            Image(systemName: imageName)
                .resizable()
                .renderingMode(.template)
                .foregroundColor(isActive ? .white : .gray)
                .frame(width: 20, height: 20)
            if isActive{
                Text(title)
                    .font(.system(size: 14))
                    .foregroundColor(isActive ? .white : .gray)
            }
            Spacer()
        }
        .frame(width: isActive ? .infinity : 60)
        .padding(.vertical)
        .background(isActive ? .purple.opacity(0.3) : .clear)
        .background(
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(Color(.white))
                    .opacity(0.2)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(Color(.systemGray6), lineWidth: 2)
            )
            .cornerRadius(20)
            .padding(.horizontal)
            .shadow(color: Color(.systemPurple), radius: 2, x: 0 , y: 2)
    }
}



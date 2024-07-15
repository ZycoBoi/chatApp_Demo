//
//  BioView.swift
//  ChatApp_Demo
//
//  Created by sankar on 04/07/24.
//

import SwiftUI

struct BioView: View {
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.purple.opacity(0.5),.cyan.opacity(0.5)], startPoint: .topTrailing, endPoint: .bottomLeading)
              
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            ScrollView(showsIndicators: false) {
                VStack(alignment: .center) {
                    cardImageView()
                        .padding(.bottom, 30)
                    BioTabView()
                }
            }
          
        }
        
    }
}

struct cardImageView: View {
   
    var imageURL = URL(string: "https://media.istockphoto.com/id/467584478/photo/pink-hair-manga-style-girl-holding-bow-tie.jpg?s=2048x2048&w=is&k=20&c=qSlNHr3bTOKcujMiMKEMpHsRMb4BZvZV6-NmpQkeesg=")
    var name = "Bunny"
    
    var body: some View {
       
        HStack{
            AsyncImage(url: imageURL){ image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 154, height: 229)
                    .cornerRadius(18)
                    .shadow( color: Color(.systemCyan), radius: 5, x: 1 , y: 3)
                    .padding(.leading)

            } placeholder: {
                ProgressView()
            }
            VStack(alignment: .leading) {
                Text(name)
                    .foregroundColor(Color(.systemCyan))
                    .font(
                    Font.custom("SF Pro Display", size: 41)
                    .weight(.medium)
                    )
                    .padding(.bottom, 15)
//                    .frame(width: 125, height: 90, alignment: .topLeading)
                
                Text("Email")
                  .font(
                    Font.custom("SF Pro Display", size: 9)
                      .weight(.medium)
                  )
                  .foregroundColor(Color(.black).opacity(0.5))
                  .frame(width: 36, alignment: .topLeading)
                
                Text("emily.n@hotmail.com")
                  .font(
                    Font.custom("SF Pro Display", size: 14)
                      .weight(.medium)
                  )
                  .foregroundColor(Color(red: 0.47, green: 0.51, blue: 0.55))
                  .frame(width: 146, alignment: .topLeading)
                  .padding(.bottom, 15)
                
                Text("Date of Birth")
                  .font(
                    Font.custom("SF Pro Display", size: 9)
                      .weight(.medium)
                  )
                  .foregroundColor(Color(.black).opacity(0.5))
                  .frame(width: 54, alignment: .topLeading)
                
                Text("December, 07, 2020")
                  .font(
                    Font.custom("SF Pro Display", size: 14)
                      .weight(.medium)
                  )
                  .foregroundColor(Color(.black)).opacity(0.7)
                  .frame(width: 146, alignment: .topLeading)
                  .padding(.bottom, 15)
                Text("Address")
                  .font(
                    Font.custom("SF Pro Display", size: 9)
                      .weight(.medium)
                  )
                  .foregroundColor(Color(.black).opacity(0.5))
                  .frame(width: 54, alignment: .topLeading)
                
                Text("Pasadena, California")
                  .font(
                    Font.custom("SF Pro Display", size: 14)
                      .weight(.medium)
                  )
                  .foregroundColor(Color(.black)).opacity(0.7)
                  .frame(width: 146, alignment: .topLeading)
                 
                
            }.frame(width: 154, height: 225)
        }
        .background(
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 350, height: 258)
              .background(
                  RoundedRectangle(cornerRadius: 20)
                      .foregroundColor(Color(.white))
                      .opacity(0.1)
              )
              .overlay(
                  RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(Color(.systemGray6).opacity(0.5), lineWidth: 2)
              )

              .cornerRadius(20)
              .shadow(color: Color(.systemGray6), radius: 2, x: 0 , y: 2)
        )
        .padding(.horizontal, 5)
    }
    
}


struct trailingCardImageView: View {
   
    var imageURL = URL(string: "https://media.istockphoto.com/id/467584478/photo/pink-hair-manga-style-girl-holding-bow-tie.jpg?s=2048x2048&w=is&k=20&c=qSlNHr3bTOKcujMiMKEMpHsRMb4BZvZV6-NmpQkeesg=")
    var name = "Bunny"
    
    var body: some View {
        
        HStack{
            
            VStack(alignment: .leading) {
                Text("Software \n Engineer")
                    .foregroundColor(Color(.systemCyan))
                    .font(
                    Font.custom("SF Pro Display", size: 41)
                    .weight(.medium)
                    )
                    .padding(.bottom, 15)
//                    .frame(width: 125, height: 90, alignment: .topLeading)
                
                Text("Type")
                  .font(
                    Font.custom("SF Pro Display", size: 9)
                      .weight(.medium)
                  )
                  .foregroundColor(Color(.systemGray))
                  .frame(width: 36, alignment: .topLeading)
                
                Text("Junior employe")
                  .font(
                    Font.custom("SF Pro Display", size: 14)
                      .weight(.medium)
                  )
                  .foregroundColor(Color(.black)).opacity(0.7)
                  .frame(width: 146, alignment: .topLeading)
                  .padding(.bottom, 15)
                
                Text("Date of Joined")
                  .font(
                    Font.custom("SF Pro Display", size: 9)
                      .weight(.medium)
                  )
                  .foregroundColor(Color(.systemGray))
                  .frame(width: 54, alignment: .topLeading)
                
                Text("January, 10, 2021")
                  .font(
                    Font.custom("SF Pro Display", size: 14)
                      .weight(.medium)
                  )
                  .foregroundColor(Color(.black)).opacity(0.7)
                  .frame(width: 146, alignment: .topLeading)
                  .padding(.bottom, 15)
                Text("Experience")
                  .font(
                    Font.custom("SF Pro Display", size: 9)
                      .weight(.medium)
                  )
                  .foregroundColor(Color(.systemGray))
                  .frame(width: 54, alignment: .topLeading)
                
                Text("1 Year")
                  .font(
                    Font.custom("SF Pro Display", size: 14)
                      .weight(.medium)
                  )
                  .foregroundColor(Color(.black)).opacity(0.7)
                  .frame(width: 146, alignment: .topLeading)
                 
                
            }.frame(width: 154, height: 225)
            
            AsyncImage(url: imageURL){ image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 154, height: 229)
                    .cornerRadius(18)
                    .shadow( color: Color(.systemPurple), radius: 5, x: 1 , y: 3)
                    .padding(.leading)

            } placeholder: {
                ProgressView()
            }
        }
        .background(
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 350, height: 258)
              .background(
                  Rectangle()
                    .foregroundColor(.clear)
                     .background(
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color(.white))
                            .opacity(0.1)
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                          .strokeBorder(Color(.systemGray6).opacity(0.5), lineWidth: 2)
                    )

                    .cornerRadius(20)
                    .shadow(color: Color(.systemGray6), radius: 2, x: 0 , y: 2))
        )
        .padding(.horizontal, 5)
    }
    
}


struct BioView_Previews: PreviewProvider {
    static var previews: some View {
        BioView()
    }
}


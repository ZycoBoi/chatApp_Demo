//
//  BioTabView.swift
//  ChatApp_Demo
//
//  Created by sankar on 04/07/24.
//

import SwiftUI

struct BioTabView: View {
    
    var body: some View {
       
        VStack(alignment: .leading, spacing: 30) {
            VStack(alignment: .leading) {
                Text("Bio").textCase(.uppercase)
                  .font(
                    Font.custom("SF Pro Display", size: 14)
                      .weight(.semibold)
                  )
                  .foregroundColor(Color(.black).opacity(0.5))
                  .frame(width: 104, height: 12, alignment: .topLeading)
                Text("Lorem ipsum dolor sit amet, consectetur adipi scing elit. Tortor turpis sodales nulla velit. Nunc cum vitae, rhoncus leo id. Volutpat  Duis tinunt pretium luctus pulvinar pretium.")
                  .font(
                    Font.custom("SF Pro Display", size: 14)
                      .weight(.medium)
                  )
                  .foregroundColor(Color(.black).opacity(0.7))
                  .frame(width: 301, height: 80, alignment: .topLeading)
                  .lineLimit(nil)
                  .lineSpacing(5)
            }.padding(.all, 15)
                .background(
                    Rectangle()
                      .foregroundColor(.clear)
                       .background(
                          RoundedRectangle(cornerRadius: 20)
                            .frame(width: 370)
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
            VStack(alignment: .leading) {
                Text("on the web").textCase(.uppercase)
                    .font(
                        Font.custom("SF Pro Display", size: 14)
                            .weight(.semibold)
                    )
                    .foregroundColor(Color(.black).opacity(0.5))
                    .frame(width: 104, height: 12, alignment: .topLeading)
                HStack(spacing: 15){
                    Image("twit")
                        .resizable()
                                       .aspectRatio(contentMode: .fit)
                                       .frame(width: 50, height: 50)
                    Image("linkedin")
                        .resizable()
                                       .aspectRatio(contentMode: .fit)
                                       .frame(width: 50, height: 50)
                    Image("insta")
                        .resizable()
                                       .aspectRatio(contentMode: .fit)
                                       .frame(width: 50, height: 50)
                    Image("facebook")
                        .resizable()
                                       .aspectRatio(contentMode: .fit)
                                       .frame(width: 50, height: 50)
                }.frame(width: 301, alignment: .topLeading)

            }.padding(.all, 15)
                .background(
                    Rectangle()
                      .foregroundColor(.clear)
                       .background(
                          RoundedRectangle(cornerRadius: 20)
                            .frame(width: 370)
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
            VStack(alignment: .leading) {
                HStack {
                    Text("website").textCase(.uppercase)
                      .font(
                        Font.custom("SF Pro Display", size: 14)
                          .weight(.semibold)
                      )
                      .foregroundColor(Color(.black).opacity(0.5))
                      .frame(width: 104, height: 12, alignment: .topLeading)
                    Text("www.portfolio.emily.com")
                      .font(
                        Font.custom("SF Pro Display", size: 17)
                          .weight(.medium)
                      )
                      .foregroundColor(Color(.black).opacity(0.7))
                      .frame(width: 203, height: 17, alignment: .topLeading)
                }
                 HStack {
                    Text("phone").textCase(.uppercase)
                      .font(
                        Font.custom("SF Pro Display", size: 14)
                          .weight(.semibold)
                      )
                      .foregroundColor(Color(.black).opacity(0.5))
                      .frame(width: 104, height: 12, alignment: .topLeading)
                    Text("626-398-6547")
                      .font(
                        Font.custom("SF Pro Display", size: 17)
                          .weight(.medium)
                      )
                      .foregroundColor(Color(.black).opacity(0.7))
                      .frame(width: 203, height: 18, alignment: .topLeading)
                }
            }.padding(.all, 15)
                .background(
                    Rectangle()
                      .foregroundColor(.clear)
                       .background(
                          RoundedRectangle(cornerRadius: 20)
                            .frame(width: 365)
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
         }
        
    }
}

struct BioTabView_Previews: PreviewProvider {
    static var previews: some View {
        BioTabView()
    }
}

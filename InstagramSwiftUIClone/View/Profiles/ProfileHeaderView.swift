//
//  ProfileHeaderView.swift
//  InstagramSwiftUIClone
//
//  Created by Shahad Bagarish on 26/05/2022.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("Image-2")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .padding(.leading)
                
                Spacer()
                
                HStack (spacing: 16) {
                    UserStateView(number: 1, text: "Posts")
                    UserStateView(number: 2, text: "Followers")
                    UserStateView(number: 4, text: "Following")
                }.padding(.trailing, 32)
            }
            
            Text("Sweet Shahad ")
                .font(.system(size: 15, weight: .semibold))
                .padding([.leading,.top])
            Text("Gotham's Dark night || Billionaire.")
                .font(.system(size: 15))
                .padding(.leading)
                
            
            HStack {
                Spacer()
               ProfileActionButtonView()
                Spacer()
            }.padding(.top)
            
            
            
        }
    }
}



struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}


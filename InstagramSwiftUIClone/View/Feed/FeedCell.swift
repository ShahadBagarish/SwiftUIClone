//
//  FeedCell.swift
//  InstagramSwiftUIClone
//
//  Created by Shahad Bagarish on 23/05/2022.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Image("Image-3")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36, height: 36)
                    .clipped()
                    .cornerRadius(18)
                Text("Shahad")
                    .font(.system(size: 14, weight: .semibold))
            }
            .padding(.leading, 4)
            
            Image("Image-5")
                .resizable()
                .scaledToFill()
                .frame(maxHeight: 440)
                .clipped()
                .cornerRadius(18)
            
            HStack (spacing: 16){
                Button {} label: {
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .font(.system(size: 20))
                        .clipped()
                        .padding(4)
                }
                Button {} label: {
                    Image(systemName: "bubble.right")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .font(.system(size: 20))
                        .clipped()
                        .padding(4)
                }
                Button { } label: {
                    Image(systemName: "paperplane")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .font(.system(size: 20))
                        .clipped()
                        .padding(4)
                }

            }
            .foregroundColor(.black)
            .padding(.leading, 4)
            
            Text("3 Likes")
                .font(.system(size: 14, weight: .semibold))
                .padding(.leading,8)
                .padding(.bottom, 2)
            
            HStack{
                Text("Queen ")
                    .font(.system(size: 14, weight: .bold)) +
                Text("All men have limits. they learn what they are and learn not to exceed the. I ignore mine")
                    .font(.system(size: 15))
            }
            .padding(.horizontal, 8)
            
            Text("2d")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding(.leading, 8)
                .padding(.top, -2)
        }
        
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}

//
//  NotificationCell.swift
//  InstagramSwiftUIClone
//
//  Created by Shahad Bagarish on 25/05/2022.
//

import SwiftUI

struct NotificationCell: View {
    @State private var showPostImage = true
    
    var body: some View {
        HStack{
            Image("Image-3")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
            
                Text("Queen ")
                    .font(.system(size: 14, weight: .bold)) +
                Text("Liked one of your posts.")
                    .font(.system(size: 15))
            Spacer()
            
            if showPostImage {
                Image("Image-5")
                    .resizable()
                    .frame(width: 41, height: 45)
                    .scaledToFit()
            }else {
                Button(
                    action: {},
                    label: {
                        Text("Follow")
                            .padding(.horizontal, 20)
                            .padding(.vertical, 8)
                            .background(Color(.systemBlue))
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                            .font(.system(size: 14, weight: .semibold))
                    })
            }
            
        }
        .padding(.horizontal)
    }
}

struct NotificationCell_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCell()
    }
}

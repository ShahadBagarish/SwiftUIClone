//
//  UserCell.swift
//  InstagramSwiftUIClone
//
//  Created by Shahad Bagarish on 24/05/2022.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            Image("Image-3")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
            VStack (alignment: .leading){
                
                Text("Shahad")
                    .font(.system(size: 14, weight: .semibold))
                
                Text("The Best User")
                    .font(.system(size: 14))
            }
            Spacer()
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}

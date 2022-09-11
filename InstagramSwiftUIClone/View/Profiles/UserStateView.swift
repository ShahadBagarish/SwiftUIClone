//
//  UserStateView.swift
//  InstagramSwiftUIClone
//
//  Created by Shahad Bagarish on 26/05/2022.
//

import SwiftUI

struct UserStateView: View {
    let number: Int
    let text: String
    
    var body: some View {
        VStack {
            Text("\(number)")
                .font(.system(size: 15, weight: .semibold))
            
            Text(text)
                .font(.system(size: 15))
        }
        .frame(width: 80, alignment: .center)
    }
}

struct UserStateView_Previews: PreviewProvider {
    static var previews: some View {
        UserStateView(number: 1, text: "Post")
            .previewLayout(.sizeThatFits)
    }
}

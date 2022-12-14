//
//  ProfileView.swift
//  InstagramSwiftUIClone
//
//  Created by Shahad Bagarish on 23/05/2022.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 32) {
                ProfileHeaderView()
                PostGridView()
            }.padding(.top)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

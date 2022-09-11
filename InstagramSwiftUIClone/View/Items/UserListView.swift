//
//  UserListView.swift
//  InstagramSwiftUIClone
//
//  Created by Shahad Bagarish on 24/05/2022.
//

import SwiftUI

struct UserListView: View {
    var body: some View {
        ScrollView{
            LazyVStack {
                ForEach(1 ..< 20 ){ _ in
                    NavigationLink(
                        destination: ProfileView(),
                        label: {
                            UserCell()
                                .padding(.leading)
                        })
                    
                }
            }
        }
    }
}

struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView()
    }
}

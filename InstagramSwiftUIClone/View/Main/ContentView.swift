//
//  ContentView.swift
//  InstagramSwiftUIClone
//
//  Created by Shahad Bagarish on 23/05/2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModal
    
    var body: some View {
        Group{
            if viewModel.userSession == nil {
                LoginView()
            }else{
                MainTabView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

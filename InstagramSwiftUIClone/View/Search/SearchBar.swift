//
//  SearchBar.swift
//  InstagramSwiftUIClone
//
//  Created by Shahad Bagarish on 24/05/2022.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var text: String
    @Binding var isEditing: Bool
    
    var body: some View {
        
        HStack{
            TextField("Search", text: $text)
                .padding(8)
                .padding(.horizontal, 24)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth:.infinity, alignment: .leading)
                            .padding(.leading,8)
                    })
                .onTapGesture {
                    isEditing = true
                }
            
            if isEditing{
                Button(action: {
                    isEditing = false
                    text = ""
                    UIApplication.shared.endEditing()
                    
                }, label: {
                    Text("Cancel")
                        .foregroundColor(.black)
                })
                .padding(.trailing, 8)
                .transition(.move(edge: .trailing))
                .animation(.easeInOut(duration: 1.0), value: isEditing)
                
            }
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant("Search..."), isEditing: .constant(true))
    }
}

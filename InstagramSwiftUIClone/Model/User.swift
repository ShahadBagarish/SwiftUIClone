//
//  User.swift
//  InstagramSwiftUIClone
//
//  Created by Shahad Bagarish on 13/11/2022.
//

import FirebaseFirestoreSwift

struct User: Decodable {
    let username: String
    let email: String
    let profileImageURL: String
    let fullname: String
    let uid: String
    // the document id so no need for the uid in firebase
    @DocumentID var id: String?
}

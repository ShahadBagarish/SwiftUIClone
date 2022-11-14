//
//  AuthViewModal.swift
//  InstagramSwiftUIClone
//
//  Created by Shahad Bagarish on 22/06/2022.
//

import SwiftUI
import Firebase
import FirebaseFirestore

class AuthViewModal: ObservableObject {
    

    let db = Firestore.firestore()
    @Published var userSession: FirebaseAuth.User?
    static let shared = AuthViewModal()
    
    
    init() {
        
        //API call to database to check if the user session nill or not
        userSession = Auth.auth().currentUser
        fetchUsers()
    }
    
    func login(withEmail email: String, password: String){
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Login Failed\(error.localizedDescription) ")
                return
            }
            
            guard let user = result?.user else {return}
            print("DEBUG: Successfully login user ...")
            self.userSession = user
        }
    }
    
    func register(withEmail email: String, Password: String, image: UIImage?, fullname: String, username: String ){
        
        //1. Upload the image to the firebase
        
        guard let image = image else { return }
        ImageUploader.uploadImage(image: image) { imageUrl in
            Auth.auth().createUser(withEmail: email, password: Password) { [self] result, error in
                if let error = error {
                    print(error.localizedDescription)
                    return
                }
                
                //2. Create the user
                //Send the user firebase
                guard let user = result?.user else { return }
                //                self.userSession = user
                print("DEBUG: Successfully registered user ...")
                
                //add the data in dictionary
                let data = ["email": email,
                            "username": username,
                            "fullname": fullname,
                            "profileImageUrl": imageUrl,
                            "uid": user.uid]
                //                Firestore.firestore().collection("users")
                //                    .document(user.uid).setData(data) { _ in
                //                    print("Successfully uploaded userdata ...")
                //
                //                    self.userSession = user
                //                }
                //3. send the dictionary to the firebase
                var ref: DocumentReference? = nil
                ref = COLLECTION_USERS.addDocument(data: data) { err in
                    if let err = err {
                        print("Error adding document: \(err)")
                    } else {
                        print("Document added with ID: \(ref!.documentID)")
                        print("Successfully uploaded userdata ...")
                        self.userSession = user
                    }
                }

                COLLECTION_USERS.document("test user").setData(data) { _ in
                    print("Successfully uploaded userdata ...")
                    self.userSession = user
                }
            }
        }
    }
    
    func signOut(){
        
        self.userSession = nil // signout from the clint side which is the view
        try? Auth.auth().signOut() // signout from the backend
        
    }
    func resetPassword(){
        
    }
    func fetchUsers(){
        guard let uid = userSession?.uid else { return }
        COLLECTION_USERS.document(uid).getDocument { snapshot, _ in
            guard let user = try? snapshot?.data(as: User.self) else { return }
            print("DEBUG: User is \(user.username)")
            
        
//            guard let dictionary = snapshot?.data() else { return }
//            guard let username = dictionary["username"] as? String else { return }
//            guard let email = dictionary["email"] as? String else { return }
//
//
//            let user = User(username: username, email: email, profileImageURL: username, fullname: username, uid: username)
//
//            print(user.username)
            
            // Insted of doing this to fetch the data you have to create model 
//            guard let username = dictionary["username"] as? String else { return }
//            print(("DEBUG: username is\(snapshot?.data())") )
            
        }
    }
}


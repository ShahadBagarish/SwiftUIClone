//
//  ImageUploader.swift
//  InstagramSwiftUIClone
//
//  Created by Shahad Bagarish on 03/08/2022.
//

import UIKit
import Firebase
import FirebaseStorage

struct ImageUploader {
    static func uploadImage(image: UIImage, completion: @escaping(String) -> Void){
        
//        To compress the image url to small size
        guard let imageData = image.jpegData(compressionQuality: 0.5 ) else { return }
        let filename = NSUUID().uuidString
        let ref = Storage.storage().reference(withPath: "/profile_image/\(filename)")
        
        ref.putData(imageData ){ _, error in
            if let error = error {
                print("DEBUG: Failed to upload image \(error.localizedDescription)")
                return
            }
            
            print("DEBUG: Successfully uploaded image ...")

            ref.downloadURL{ url, _ in
                guard let imageUrl = url?.absoluteString else { return}
                completion(imageUrl)
                
                
            }
        }
        
    }
}











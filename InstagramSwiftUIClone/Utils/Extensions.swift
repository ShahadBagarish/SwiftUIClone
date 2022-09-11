//
//  Extensions.swift
//  InstagramSwiftUIClone
//
//  Created by Shahad Bagarish on 25/05/2022.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil , for: nil)
    }
}

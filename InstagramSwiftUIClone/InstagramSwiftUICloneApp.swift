//
//  InstagramSwiftUICloneApp.swift
//  InstagramSwiftUIClone
//
//  Created by Shahad Bagarish on 23/05/2022.
//

import SwiftUI
import Firebase

//import FirebaseCore

//class AppDelegate: NSObject, UIApplicationDelegate {
//    func application(_ application: UIApplication,
//                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//        FirebaseApp.configure()
//        return true
//    }
//}


@main
struct InstagramSwiftUICloneApp: App {
    //    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(AuthViewModal.shared)
        }
    }
}

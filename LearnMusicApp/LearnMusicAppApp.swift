//
//  LearnMusicAppApp.swift
//  LearnMusicApp
//
//  Created by Dan Beers on 9/5/21.
//

import SwiftUI

@main
struct LearnMusicAppApp: App
{
    //  The adaptor which allows us to have an AppDelegate
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene
    {
        WindowGroup
        {
            ContentView()
        }
    }
}

//  This is the old AppDelegate file that was removed in the latest version of Swift.  I'm adding it back so that we can set UserDefaults.
class AppDelegate: NSObject, UIApplicationDelegate
{
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool
    {
        
        UserDefaults.standard.set(0, forKey: "question")
        UserDefaults.standard.set(0, forKey: "totalQuestionTime")

        return true
    }
}

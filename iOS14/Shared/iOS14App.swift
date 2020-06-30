//
//  iOS14App.swift
//  Shared
//
//  Created by satoutakeshi on 2020/06/30.
//

import SwiftUI

// no changes in your AppDelegate class
class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print(">> your code here !!")
        return true
    }
}

@main
struct iOS14App: App {
    @Environment(\.scenePhase) private var scenePhase
    // inject into SwiftUI life-cycle via adaptor !!!
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            SideBarView()
        }
        .onChange(of: scenePhase) { newPhase in
            switch newPhase {
                case .active:
                    print("active")
                case .background:
                    print("background")
                case .inactive:
                    print("inactive")
                @unknown default:
                    print("default")
            }
        }
    }
}

struct iOS14App_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}

//
//  SwiftUIxVIPApp.swift
//  SwiftUIxVIP
//
//  Created by Chaithat Sukra on 13/8/2566 BE.
//

import SwiftUI

@main
struct SwiftUIxVIPApp: App {
    var body: some Scene {
        WindowGroup {
            ProfileView(dataStore: ProfileDataStore()).configure()
        }
    }
}

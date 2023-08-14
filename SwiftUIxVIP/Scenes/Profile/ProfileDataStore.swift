//
//  ProfileDataStore.swift
//  SwiftUIxVIP
//
//  Created by Chaithat Sukra on 14/8/2566 BE.
//

import Foundation

final class ProfileDataStore: ObservableObject {
    @Published var fullName: String = ""
    @Published var phoneNo: String = ""
    @Published var linkedIn: String = ""
    @Published var summary: String = ""
}

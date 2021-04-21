//
//  ColorManager.swift
//  ListenUp
//
//

import Foundation
import SwiftUI

struct ColorManager {
    // create static variables for custom colors
    static let bar = Color("pinkpurple")
    static let top = Color("gradienttop")
    static let bottom = Color("gradientbottom")
    static let categories = Color("categories")

    //... add the rest of your colors here
}

// Or you can use an extension
// this will allow you to just type .spotifyGreen and you wont have to use ColorManager.spotifyGreen
extension Color {
    static let bar = Color("pinkpurple")
    static let top = Color("gradienttop")
    static let bottom = Color("gradientbottom")
    static let login = Color("login")
    static let categories = Color("categories")
 
 
    // ... add the rest of your colors here
}

//
//  Setting.swift
//  DesignCode
//
//  Created by Nirav Hathi on 5/14/21.
//

import Foundation

struct Setting: Identifiable, Hashable {
    let id = UUID()
    let imageName: String
    let title: String
}

struct SettingItems {
    
    static let options = [
        Setting(imageName: "gear",
              title: "General"),
        
        Setting(imageName: "person.crop.circle.badge.exclam",
              title: "Security"),
        
        Setting(imageName: "hand.raised.fill",
              title: "Documentation"),
              
        Setting(imageName: "key.fill",
              title: "About & Help"),
    ]
}

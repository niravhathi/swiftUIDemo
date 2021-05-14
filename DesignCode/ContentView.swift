//
//  ContentView.swift
//  DesignCode
//
//  Created by Nirav Hathi on 5/14/21.
//

import SwiftUI


struct ContentView: View {
    @State private var showGreeting = true
    
    var body: some View {
        NavigationView{
            DemoDesign().background(SwiftUI.Color(red: 45 / 255, green: 38 / 255, blue: 90 / 255)).edgesIgnoringSafeArea(.all).navigationBarTitle("Demo Design", displayMode: .inline)
            
        }
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension UINavigationBar {
    static func changeAppearance(clear: Bool) {
        let appearance = UINavigationBarAppearance()
        appearance.titleTextAttributes =  [.foregroundColor : UIColor.white]
        if clear {
            appearance.configureWithTransparentBackground()
        } else {
            appearance.configureWithDefaultBackground()
        }
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
}

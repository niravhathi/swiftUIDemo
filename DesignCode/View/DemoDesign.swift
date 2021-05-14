//
//  DemoDesign.swift
//  DesignCode
//
//  Created by Nirav Hathi on 5/14/21.
//

import Foundation
import SwiftUI
struct DemoDesign : View {
    @State private var showGreeting = true
    init() {
        UINavigationBar.changeAppearance(clear: true)
        UITableView.appearance().backgroundColor = UIColor.clear
        UITableView.appearance().separatorStyle = .singleLine
        UITableView.appearance().separatorColor = .white
    }
    var body: some View {
        Form {
            Section{
                HStack{
                    VStack(alignment: .leading){
                        Text("Offline Mode")
                            .fontWeight(.semibold)
                            .minimumScaleFactor(0.5)
                            .foregroundColor(Color.white).padding(.bottom, -5)
                        
                        Toggle("In offline Mode, all data is save for later submission. Useful to save cellular data or when connectivity is poor. Disable when you're ready to submit forms.", isOn: $showGreeting).toggleStyle(SwitchToggleStyle(tint: SwiftUI.Color(red: 45 / 255, green: 38 / 255, blue: 90 / 255))).foregroundColor(Color.white).font(.subheadline)
                    }
                }
            }.listRowBackground(Color(red: 62 / 255, green: 56 / 255, blue: 104 / 255))
            Section {
                SettingMenu()
                
            }
        }
        
    }
}

struct SettingMenu: View {
    var settings: [Setting] = SettingItems.options
    var body: some View {
        List{
            ForEach(settings, id: \.id) { setting in
                HStack{
                    Image(systemName: setting.imageName)
                        .frame(width: 25, height: 25).foregroundColor(Color.white)
                    Text(setting.title)
                        .font(.callout).foregroundColor(Color.white)
                }
            }.listRowBackground(Color(red: 62 / 255, green: 56 / 255, blue: 104 / 255)).cornerRadius(25)
            
        }
        .onAppear() {
            UITableView.appearance().backgroundColor = UIColor.clear
            UITableView.appearance().separatorStyle = .singleLine
            UITableView.appearance().separatorColor = .white
        }
    }
}

struct DemoDesign_Previews: PreviewProvider {
    static var previews: some View {
        DemoDesign()
    }
}

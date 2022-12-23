//
//  SettingsView.swift
//  SwiftUICustomTabBar#1
//
//  Created by cmStudent on 2022/12/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        ZStack {
            Color.brown.ignoresSafeArea()
            Text("Settings")
                .foregroundColor(.white)
                .font(.largeTitle)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

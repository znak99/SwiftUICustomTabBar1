//
//  ProfileView.swift
//  SwiftUICustomTabBar#1
//
//  Created by cmStudent on 2022/12/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack {
            Color.purple.ignoresSafeArea()
            Text("Profile")
                .foregroundColor(.white)
                .font(.largeTitle)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

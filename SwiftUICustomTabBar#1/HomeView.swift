//
//  HomeView.swift
//  SwiftUICustomTabBar#1
//
//  Created by cmStudent on 2022/12/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            Text("Home")
                .foregroundColor(.white)
                .font(.largeTitle)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

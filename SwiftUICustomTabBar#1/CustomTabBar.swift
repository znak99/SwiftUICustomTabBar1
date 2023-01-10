//
//  ContentView.swift
//  SwiftUICustomTabBar#1
//
//  Created by cmStudent on 2022/12/23.
//

import SwiftUI

struct CustomTabBar: View {
    
    @State
    var currentTabIdx = 0
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Color.black.ignoresSafeArea()
                
                if (currentTabIdx == 0) {
                    HomeView()
                } else if (currentTabIdx == 1) {
                    SettingsView()
                } else if (currentTabIdx == 2) {
                    ProfileView()
                }
                
                VStack {
                    Spacer()
                    ZStack {
                        RoundedRectangle(cornerRadius: 24)
                            .fill(.white)
                            .frame(
                                width: geo.size.width / 1.3,
                                height: geo.size.height / 18,
                                alignment: .center
                            )
                        
                        HStack {
                            Button(action: {
                                changeTab(index: 0)
                            }) {
                                Image(systemName: "house.fill")
                                    .foregroundColor(currentTabIdx == 0 ? .blue : .gray)
                            }
                            Spacer()
                            Button(action: {
                                changeTab(index: 1)
                            }) {
                                Image(systemName: "gearshape.fill")
                                    .foregroundColor(currentTabIdx == 1 ? .brown : .gray)
                            }
                            Spacer()
                            Button(action: {
                                changeTab(index: 2)
                            }) {
                                Image(systemName: "person.fill")
                                    .foregroundColor(currentTabIdx == 2 ? .purple : .gray)
                            }
                        }
                        .foregroundColor(.gray)
                        .frame(width: geo.size.width / 1.5)
                        .font(.title2)
                    }
                }
            }
        }
    }
    func changeTab(index: Int) {
        withAnimation {
            self.currentTabIdx = index
        }
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar()
    }
}

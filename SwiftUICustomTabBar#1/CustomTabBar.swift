//
//  ContentView.swift
//  SwiftUICustomTabBar#1
//
//  Created by cmStudent on 2022/12/23.
//

import SwiftUI

struct CustomTabBar: View {
    
    @State
    var currentTabIdx = 1
    
    @State
    var circlePosition: CGFloat = 150.0
    
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
                        Circle()
                            .fill(.white)
                            .frame(
                                width: geo.size.width / 6,
                                alignment: .center
                            )
                            .offset(x: geo.size.width / CGFloat(circlePosition))
                        HStack {
                            Button(action: {
                                changeTab(index: 0)
                                withAnimation {
                                    circlePosition = -3.4
                                }
                            }) {
                                Image(systemName: "house.fill")
                                    .foregroundColor(currentTabIdx == 0 ? .blue : .gray)
                                    .scaleEffect(currentTabIdx == 0 ? 1.2 : 1.0)
                            }
                            Spacer()
                            Button(action: {
                                changeTab(index: 1)
                                withAnimation {
                                    circlePosition = 150
                                }
                            }) {
                                Image(systemName: "gearshape.fill")
                                    .foregroundColor(currentTabIdx == 1 ? .brown : .gray)
                                    .scaleEffect(currentTabIdx == 1 ? 1.2 : 1.0)
                            }
                            Spacer()
                            Button(action: {
                                changeTab(index: 2)
                                withAnimation {
                                    circlePosition = 3.35
                                }
                            }) {
                                Image(systemName: "person.fill")
                                    .foregroundColor(currentTabIdx == 2 ? .purple : .gray)
                                    .scaleEffect(currentTabIdx == 2 ? 1.2 : 1.0)
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

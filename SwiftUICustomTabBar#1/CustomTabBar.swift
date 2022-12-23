//
//  ContentView.swift
//  SwiftUICustomTabBar#1
//
//  Created by cmStudent on 2022/12/23.
//

import SwiftUI

struct CustomTabBar: View {
    
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Color.black.ignoresSafeArea()
                // some view
                VStack {
                    Spacer()
                    ZStack {
                        RoundedRectangle(cornerRadius: 24)
                            .fill(.white)
                            .frame(
                                width: geo.size.width / 1.3,
                                height: geo.size.height / 20,
                                alignment: .center
                            )
                        HStack {
                            Button(action: {}) {
                                Image(systemName: "house.fill")
                            }
                            Spacer()
                            Button(action: {}) {
                                Image(systemName: "gear")
                            }
                            Spacer()
                            Button(action: {}) {
                                Image(systemName: "person.fill")
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
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar()
    }
}

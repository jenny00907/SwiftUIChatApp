//
//  MainTabView.swift
//  SwiftUIChat
//
//  Created by Jenny Woorim Lee on 2021/08/04.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ConversationView()
                .tabItem { Image(systemName: "bubble.left") }
            ChannelsView()
                .tabItem { Image(systemName: "bubble.left.and.bubble.right") }
            SettingsView()
                .tabItem { Image(systemName: "gear") }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}

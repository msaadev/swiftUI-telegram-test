//
//  AllChatsView.swift
//  Telegram Colne
//
//  Created by muhammed samil demir on 11.07.2023.
//

import SwiftUI

struct AllChatsView: View {
    @EnvironmentObject var homeData : HomeViewModel
    var body: some View {
        List(selection: $homeData.selectedRecentMessage) {
            ForEach(homeData.msg) { message in
                NavigationLink(destination: Text("Destination"), label: {
                    RecentCardView(recentMsg: message)
                })
            }
        }
        .listStyle(SidebarListStyle())
    }
}

struct AllChatsView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

//
//  HomeViewModel.swift
//  Telegram Colne
//
//  Created by muhammed samil demir on 11.07.2023.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var selectedTab = "All Chats"
    @Published var msg : [RecentMessage] = recentMsgs
    @Published var selectedRecentMessage : String? = recentMsgs.first?.id
}

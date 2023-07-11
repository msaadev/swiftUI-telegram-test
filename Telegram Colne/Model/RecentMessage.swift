//
//  RecentMessage.swift
//  Telegram Colne
//
//  Created by muhammed samil demir on 11.07.2023.
//

import SwiftUI

struct RecentMessage: Identifiable {
    
    var id = UUID() . uuidString
    var lastMsg : String
    var lastMsgTime: String
    var pendingMsgs : String
    var userName : String
    var userImage : String
    var allMsgs: [Message]
}

var recentMsgs: [RecentMessage] = [
    
    RecentMessage ( lastMsg: "Apple Tech", lastMsgTime: "15:00", pendingMsgs: "9", userName:
    "Justine", userImage: "p4", allMsgs: Eachmsg.shuffled()),
    RecentMessage (lastMsg: "New Album Is Going To Be Released!!!!", lastMsgTime: "14:32", pendingMsgs: "2", userName: "Taylor", userImage: "po", allMsgs: Eachmsg.shuffled ())
    
]

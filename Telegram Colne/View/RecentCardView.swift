//
//  RecentCardView.swift
//  Telegram Colne
//
//  Created by muhammed samil demir on 11.07.2023.
//

import SwiftUI

struct RecentCardView: View {
    var recentMsg : RecentMessage
    var body: some View {
        HStack {
            Image(recentMsg.userImage)
                .aspectRatio( contentMode: .fill)
                .frame(width: 40,height: 40)
                .clipShape(Circle())
            VStack (alignment: .leading, spacing: 4) {
                Text(recentMsg.userName)
                    .fontWeight(.bold)
                Text(recentMsg.lastMsg)
                    .font(.caption)
            }
            Spacer(minLength: 10)
            VStack {
                Text(recentMsg.lastMsgTime)
                    .font(.caption)
                    .padding(5)
                Text(recentMsg.pendingMsgs)
                    .font(.caption2)
                    .padding(5)
                    .foregroundColor(.white)
                    .background(.blue)
                    .clipShape(Circle())
            }
        }
    }
}

struct RecentCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecentCardView(recentMsg: recentMsgs.first!)
    }
}

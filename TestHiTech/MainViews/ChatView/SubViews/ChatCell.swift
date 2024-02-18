//
//  ChatCell.swift
//  TestHiTech
//
//  Created by Nikita Kuznetsov on 16.02.2024.
//

import SwiftUI

struct ChatCell: View {
    let chat: ChatStruct
    
    var body: some View {
        ZStack {
            HStack {
                Image(chat.avatar)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                VStack (alignment: .leading){
                    HStack {
                        Text(chat.name)
                            .font(.headline)
                        Spacer()
                        Text(chat.list.time.last ?? "error")
                            .font(.subheadline)
                    }
                    Text(chat.list.message.last ?? "error")
                        .font(.subheadline)
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    ChatCell(chat: sampleChat)
}

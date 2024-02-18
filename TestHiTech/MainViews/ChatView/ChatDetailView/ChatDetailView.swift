//
//  ChatDetailView.swift
//  TestHiTech
//
//  Created by Nikita Kuznetsov on 16.02.2024.
//

import SwiftUI

struct ChatDetailView: View {
    let chat: ChatStruct
    @State private var isShowingContactInfo = false

    var body: some View {
        ZStack {
            VStack {
                ZStack {
                    Image("chatBack")
                        .resizable()
//                        .ignoresSafeArea()
                    List {
                        ForEach(0..<chat.list.message.count, id: \.self) { index in
                            HStack {
                                MessageCell(text: chat.list.message[index], time: chat.list.time[index], who: chat.list.who[index])
                            }
                        }
                        .listRowBackground(Color.clear)
                    }
                }
                .listStyle(PlainListStyle())
                Spacer()
                ChatInput()
                    
            }
        }
        .background(
            NavigationLink(destination: ContactInfoView(chat: chat), isActive: $isShowingContactInfo) { EmptyView() }.hidden()
        )
        .navigationTitle(chat.name)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                HStack {
                    Image(chat.avatar)
                        .resizable()
                        .frame(width: 32, height: 32)
                        .clipShape(Circle())
                    VStack(alignment: .leading) {
                        Text(chat.name)
                            .fontWeight(.bold)
                        Text("tap here for contact info")
                            .onTapGesture {
                                isShowingContactInfo = true
                            }
                    }
                }
                .frame(width: UIScreen.main.bounds.width - 60, height: 44)
            }
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                Button(action: {}) {
                    Image(systemName: "phone.fill")
                }
                
                Button(action: {}) {
                    Image(systemName: "video.fill")
                }
            }
        }
    }
}

#Preview {
    ChatDetailView(chat: sampleChat)
}

//
//  ChatListView.swift
//  TestHiTech
//
//  Created by Nikita Kuznetsov on 16.02.2024.
//

import SwiftUI

struct ChatListView: View {
    @State var chats: [ChatStruct]
    
    var body: some View {
        ZStack {
            NavigationStack {
                VStack(spacing: 0) {
                    HStack {
                        Button(action: {}) {
                            Text("Broadcast List")
                        }
                        Spacer()
                        Button(action: {}) {
                            Text("New Group")
                        }
                    }
                    .padding()
                    Divider()
                    
                    List {
                        ForEach(chats) { chat in
                            NavigationLink(destination: ChatDetailView(chat: chat)) {
                                ChatCell(chat: chat)
                            }
                            .swipeActions(edge: .leading, allowsFullSwipe: true) {
                                Button(role: .destructive, action: {
                                    if let index = chats.firstIndex(where: { $0.id == chat.id }) {
                                        chats.remove(at: index)
                                    }
                                }) {
                                    VStack {
                                        Image(systemName: "xmark.bin")
                                            .font(.system(size: 20))
                                        Text("Delete")
                                            .font(.caption)
                                    }
                                }
                            }
                            .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                                Button(action: {
                                    self.archiveChat(chat)
                                }) {
                                    VStack {
                                        Image(systemName: "tray.and.arrow.down")
                                            .font(.system(size: 20))
                                        Text("Archive")
                                            .font(.caption)
                                    }
                                }
                                .tint(.blue)
                                Button(action: {
                                    self.showMoreActions(for: chat)
                                }) {
                                    VStack {
                                        Image(systemName: "ellipsis")
                                            .font(.system(size: 20))
                                        Text("More")
                                            .font(.caption)
                                    }
                                }
                                .tint(.gray)
                            }
                            
                        }
                        .onDelete(perform: deleteChat)
                    }
                    .navigationBarTitle("Chats", displayMode: .inline)
                    .listStyle(PlainListStyle())
                    .navigationBarItems(
                        leading: EditButton(),
                        trailing: Button(action: {
                        }) {
                            Image(systemName: "square.and.pencil")
                        }
                    )
                }
            }
        }
    }
    
    func deleteChat(at offsets: IndexSet) {
        chats.remove(atOffsets: offsets)
    }
    
    func moveChat(from source: IndexSet, to destination: Int) {
        chats.move(fromOffsets: source, toOffset: destination)
    }
    func archiveChat(_ chat: ChatStruct) {
        print("Chat \(chat.name) archived")
    }
    
    func showMoreActions(for chat: ChatStruct) {
        print("Showing more actions for \(chat.name)")
    }
}


#Preview {
    ChatListView(chats: sampleChats)
}

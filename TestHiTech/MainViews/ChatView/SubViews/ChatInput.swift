//
//  ChatInput.swift
//  TestHiTech
//
//  Created by Nikita Kuznetsov on 19.02.2024.
//

import SwiftUI

struct ChatInput: View {
    @State private var messageText: String = ""
    
    var body: some View {
        VStack {
            Divider()
            HStack(spacing: 15) {
                Button(action: {
                }) {
                    Image(systemName: "plus")
                        .font(.system(size: 22))
                        .foregroundColor(.blue)
                }
                ZStack(alignment: .trailing) {
                    if messageText.isEmpty {
                        Text("Type a message")
                            .foregroundColor(.blue)
                            .padding(.leading, 5)
                    }
                    TextField("", text: $messageText)
                        .padding(10)
                        .background(Color(.systemGray6))
                        .cornerRadius(20)
                    if messageText.isEmpty {
                        Button(action: {
                            
                        }) {
                            Image(systemName: "theatermasks.circle")
                                .font(.system(size: 22))
                                .foregroundColor(.blue)
                        }
                        .padding(.trailing, 10)
                    }
                }
                .frame(height: 40)
                if messageText.isEmpty {
                    Button {
                        
                    } label: {
                        Image(systemName: "camera")
                    }
                    
                }
                Button(action: {
                    if messageText.isEmpty {
                        print("Start recording audio")
                    } else {
                        print("Send text message: \(messageText)")
                        messageText = ""
                    }
                }) {
                    Image(systemName: messageText.isEmpty ? "mic.fill" : "paperplane.fill")
                        .font(.system(size: 22))
                        .foregroundColor(.blue)
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 8)
        }
    }
}

#Preview {
    ChatInput()
}

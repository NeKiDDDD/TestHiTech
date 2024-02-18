//
//  ContactInfoView.swift
//  TestHiTech
//
//  Created by Nikita Kuznetsov on 16.02.2024.
//

import SwiftUI

struct ContactInfoView: View {
    let chat: ChatStruct
    @State private var isEditContactViewPresented = false
    
    var body: some View {
        ZStack{
            List{
                Image(chat.avatar)
                    .resizable()
                    .ignoresSafeArea()
                    .aspectRatio(contentMode: .fill)
                Section{
                    HStack {
                        VStack(alignment: .leading){
                            Text(chat.name)
                                .font(.system(size: 22))
                            Text(chat.number)
                                .foregroundColor(.secondary)
                        }.padding(.leading,9)
                        Spacer()
                        HStack {
                            Button {
                                
                            } label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color.init(hex: "EDEDFF"))
                                        .frame(width: 30, height: 30)
                                    Image(systemName: "message.fill")
                                        .foregroundColor(.blue)
                                }
                                .clipShape(Circle())
                                
                            }
                            Button {
                                
                            } label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color.init(hex: "EDEDFF"))
                                        .frame(width: 30, height: 30)
                                    Image(systemName: "video.fill")
                                        .foregroundColor(.blue)
                                }
                                .clipShape(Circle())
                                
                            }
                            Button {
                                
                            } label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color.init(hex: "EDEDFF"))
                                        .frame(width: 30, height: 30)
                                    Image(systemName: "phone.fill")
                                        .foregroundColor(.blue)
                                }
                                .clipShape(Circle())
                            }
                        }
                    }
                    VStack (alignment: .leading){
                        Text(chat.shortInfo)
                        Text("\(formatDate())")
                    }
                }.padding(.vertical,1)
                Section{
                    NavigationLink{
                    }label:{
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(.blue))
                                .frame(width: 30, height: 30)
                            Image(systemName: "photo")
                                .foregroundColor(.white)
                        }
                        Text("Media, Links, and Docs")
                            .padding(.leading,9)
                    }
                    NavigationLink{
                    }label:{
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(.systemYellow))
                                .frame(width: 30, height: 30)
                            Image(systemName: "star.fill")
                                .foregroundColor(.white)
                        }
                        Text("Starred Messages")
                            .padding(.leading,9)
                    }
                    NavigationLink{
                    }label:{
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(.orange))
                                .frame(width: 30, height: 30)
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.white)
                        }
                        Text("Chat Search")
                            .padding(.leading,9)
                    }
                }
                Section{
                    NavigationLink{
                    }label:{
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(.systemCyan))
                                .frame(width: 30, height: 30)
                            Image(systemName: "speaker.wave.3.fill")
                                .foregroundColor(.white)
                        }
                        Text("Mute")
                            .padding(.leading,9)
                    }
                    NavigationLink{
                    }label:{
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(.pink))
                                .frame(width: 30, height: 30)
                            Image(systemName: "music.note")
                                .foregroundColor(.white)
                        }
                        Text("Custom Tone")
                            .padding(.leading,9)
                    }
                    NavigationLink{
                    }label:{
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(.yellow))
                                .frame(width: 30, height: 30)
                            Image(systemName: "square.and.arrow.down")
                                .foregroundColor(.white)
                        }
                        Text("Save to Camera Roll")
                            .padding(.leading,9)
                    }
                    NavigationLink{
                    }label:{
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(.blue))
                                .frame(width: 30, height: 30)
                            Image(systemName: "lock.fill")
                                .foregroundColor(.white)
                        }
                        Text("Encryption")
                            .padding(.leading,9)
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle(chat.name)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                trailing: Button(action: {
                    isEditContactViewPresented = true
                }, label: {
                    Text("Edit")
                }))
            .sheet(isPresented: $isEditContactViewPresented) {
                EditContactView(person: chat, sheet: $isEditContactViewPresented)
            }
        }
    }
    func formatDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM.dd.yyyy"
        return dateFormatter.string(from: Date.now)
    }
    
}

#Preview {
    ContactInfoView(chat: sampleChat)
}

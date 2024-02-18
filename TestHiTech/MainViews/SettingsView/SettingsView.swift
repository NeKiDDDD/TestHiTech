//
//  SettingsView.swift
//  TestHiTech
//
//  Created by Nikita Kuznetsov on 16.02.2024.
//

import SwiftUI

struct SettingsView: View {
    @State private var search = ""
    var body: some View {
        NavigationStack{
            List{
                Section{
                    HStack{
                        Image("gnom")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                        VStack(alignment: .leading){
                            Text("Nikita")
                                .font(.system(size: 22))
                            Text("Text, about me")
                                .foregroundColor(.secondary)
                        }.padding(.leading,9)
                        Spacer()
                        ZStack{
                            Circle()
                                .fill(Color(.systemGray3))
                                .frame(width: 30, height: 30)
                            Button{
                            }label:{
                                Image(systemName:"qrcode")
                            }
                        }
                    }
                    HStack{
                        NavigationLink{
                        }label:{
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color(.systemBlue))
                                    .frame(width: 30, height: 30)
                                Image(systemName: "person.and.background.dotted")
                                    .foregroundColor(.white)
                            }
                            Text("Avatar")
                                .padding(.leading,9)
                        }
                    }
                }.padding(.vertical,1)
                Section{
                    NavigationLink{
                    }label:{
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(.systemGreen))
                                .frame(width: 30, height: 30)
                            Image(systemName: "star.fill")
                                .foregroundColor(.white)
                        }
                        Text("Broadcast Lists")
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
                                .fill(Color(.systemCyan))
                                .frame(width: 30, height: 30)
                            Image(systemName: "laptopcomputer")
                                .foregroundColor(.white)
                        }
                        Text("Linked Devices")
                            .padding(.leading,9)
                    }
                }
                Section{
                    NavigationLink{
                    }label:{
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(.systemBlue))
                                .frame(width: 30, height: 30)
                            Image(systemName: "key")
                                .foregroundColor(.white)
                        }
                        Text("Account")
                            .padding(.leading,9)
                    }
                    NavigationLink{
                    }label:{
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(.systemCyan))
                                .frame(width: 30, height: 30)
                            Image(systemName: "lock.fill")
                                .foregroundColor(.white)
                        }
                        Text("Privacy")
                            .padding(.leading,9)
                    }
                    NavigationLink{
                    }label:{
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(.systemGreen))
                                .frame(width: 30, height: 30)
                            Image(systemName: "phone.bubble")
                                .foregroundColor(.white)
                        }
                        Text("Chats")
                            .padding(.leading,9)
                    }
                    NavigationLink{
                    }label:{
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(.systemRed))
                                .frame(width: 30, height: 30)
                            Image(systemName: "rectangle.and.paperclip")
                                .foregroundColor(.white)
                        }
                        Text("Notifications")
                            .padding(.leading,9)
                    }
                    NavigationLink{
                    }label:{
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(.systemGreen))
                                .frame(width: 30, height: 30)
                            Image(systemName: "arrow.up.arrow.down")
                                .foregroundColor(.white)
                        }
                        Text("StorageData")
                            .padding(.leading,9)
                    }
                }
                Section{
                    NavigationLink{
                    }label:{
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.blue)
                                .frame(width: 30, height: 30)
                            Image(systemName: "info")
                                .foregroundColor(.white)
                        }
                        Text("Help")
                            .padding(.leading,9)
                    }
                    NavigationLink{
                    }label:{
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.pink)
                                .frame(width: 30, height: 30)
                            Image(systemName: "heart.fill")
                                .foregroundColor(.white)
                        }
                        Text("Tell a Friend")
                            .padding(.leading,9)
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .searchable(text: $search, prompt: "Search")
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    SettingsView()
}

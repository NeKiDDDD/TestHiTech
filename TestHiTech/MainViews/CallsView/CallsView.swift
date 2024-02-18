//
//  CallsView.swift
//  TestHiTech
//
//  Created by Nikita Kuznetsov on 16.02.2024.
//

import SwiftUI

struct CallsView: View {
    @State private var call = ""
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    ZStack{
                        Circle()
                            .fill(Color(.systemGray6))
                            .frame(width: 40, height: 40)
                        Button{
                        }label:{
                            Image(systemName: "link")
                        }
                    }
                    VStack(alignment: .leading){
                        Button{
                        }label:{
                            Text("Create Call Link")
                        }
                        Text("Share a link for your WhatsApp call")
                            .foregroundColor(.gray)
                    }
                }
                Divider()
                Text("Recent")
                    .bold()
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .padding(.horizontal,22)
                List{
                    Section{
                        HStack{
                            Image("gnom")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                                .padding(.horizontal,12)
                            VStack(alignment:.leading){
                                Text("Pizza")
                                    .bold()
                                HStack{
                                    Image(systemName:"phone")
                                    Text("Outgoing")
                                }.foregroundColor(.gray)
                            }
                            Spacer()
                            Text("15:11")
                            Button{
                                
                            }label:{
                                Image(systemName: "info.circle")
                                    .foregroundColor(Color(.systemBlue))
                            }
                        }
                    }
                    Section {
                        HStack{
                            Image("gnom")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                                .padding(.horizontal,12)
                            VStack(alignment:.leading){
                                Text("Pizza")
                                    .bold()
                                    .foregroundColor(.red)
                                HStack{
                                    Image(systemName:"phone")
                                    Text("Missed")
                                }.foregroundColor(.gray)
                            }
                            Spacer()
                            Text("15:11")
                            Button{
                            }label:{
                                Image(systemName: "info.circle")
                                    .foregroundColor(Color(.systemBlue))
                            }
                        }
                    }
                }.listStyle(InsetListStyle())
                Spacer()
            }
            .listStyle(.grouped)
            .navigationTitle("Calls")
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                    }label:{
                        Image(systemName: "phone.badge.plus")
                    }
                }
                ToolbarItem(placement: .principal){
                    Picker("", selection: $call){
                        Text("All").tag(0)
                        Text("Middes").tag(1)
                    }.frame(width: 200)
                        .pickerStyle(.segmented)
                }
                ToolbarItem(placement: .navigationBarLeading){
                    Button{
                        
                    }label:{
                        Text("Edit")
                    }
                }
            }.accessibilityAddTraits(.isHeader)
        }
    }
}

#Preview {
    CallsView()
}

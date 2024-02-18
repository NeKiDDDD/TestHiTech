//
//  StatusView.swift
//  TestHiTech
//
//  Created by Nikita Kuznetsov on 16.02.2024.
//

import SwiftUI

struct StatusView: View {
    var body: some View {
        NavigationStack{
            VStack{
                List{
                    Section{
                        HStack{
                            ZStack{
                                Image("gnom")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 60, height: 60)
                                    .clipShape(Circle())
                                Image(systemName: "plus.circle.fill")
                                    .foregroundColor(Color(.systemBlue))
                                    .frame(width: 70, height: 55, alignment: .bottomTrailing)
                            }
                            VStack(alignment: .leading){
                                Text("My Status")
                                    .bold()
                                Text("Add to my Status")
                                    .foregroundColor(Color(.systemGray3))
                            }
                            Spacer()
                            ZStack{
                                Circle()
                                    .fill(Color(.systemGray5))
                                    .frame(width: 35, height: 50)
                                Button{
                                }label:{
                                    Image(systemName: "camera.fill")
                                }
                            }
                            ZStack{
                                Circle()
                                    .fill(Color(.systemGray5))
                                    .frame(width: 35, height: 50)
                                Button{
                                }label:{
                                    Image(systemName: "pencil")
                                }
                            }
                        }.padding(.horizontal,15)
                    }
                }.listStyle(GroupedListStyle())
                Spacer()
            }
            .navigationTitle("Updates")
        }
    }
}


#Preview {
    StatusView()
}

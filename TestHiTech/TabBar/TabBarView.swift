//
//  TabBarView.swift
//  TestHiTech
//
//  Created by Nikita Kuznetsov on 16.02.2024.
//

import SwiftUI

struct TabBarView: View {
    @State private var selectionIndex = 0
    var body: some View {
        TabView(selection: $selectionIndex){
            StatusView()
                .onAppear(){
                    selectionIndex = 0
                }.tabItem{
                    Label("Status", systemImage: "circle.dashed.inset.filled")
                }.tag(0)
            CallsView()
                .onAppear(){
                    selectionIndex = 1
                }.tabItem{
                    Label("Calls", systemImage: "phone")
                }.tag(1)
            CameraView()
                .onAppear(){
                    selectionIndex = 2
                }.tabItem{
                    Label("Camera", systemImage: "camera")
                }.tag(2)
            ChatListView(chats: sampleChats)
                .onAppear(){
                    selectionIndex = 3
                }.tabItem{
                    Label("Chats", systemImage: "bubble.left.and.bubble.right.fill")
                }.tag(3)
            SettingsView()
                .onAppear(){
                    selectionIndex = 4
                }.tabItem{
                    Label("Settings", systemImage: "gear")
                }.tag(4)
        }
    }
}

#Preview {
    TabBarView()
}

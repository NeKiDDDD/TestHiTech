//
//  MessageStruct.swift
//  TestHiTech
//
//  Created by Nikita Kuznetsov on 16.02.2024.
//

import Foundation

struct MessageStruct: Identifiable {
    let id: Int
    let message: [String]
    let time: [String]
    let who: [Bool]
}

let sampleMessages = [
    MessageStruct(id: 1, message: ["Привет!", "Как дела?"], time: ["12:00", "12:01"], who: [false, true]),
    MessageStruct(id: 2, message: ["Пойдем в кино?","Привет!", "Как дела?"], time: ["15:15","12:00", "12:01"], who: [false,false, true]),
]

let sampleChat = ChatStruct(name: "Алексей", avatar: "gnom", list: sampleMessages[1], number: "+99235646222", shortInfo: "Short description about person")

let sampleChats = [
    ChatStruct(name: "Иван", avatar: "gnom", list: sampleMessages[0], number: "+99235646222", shortInfo: "Short description about person"),
    ChatStruct(name: "Мария", avatar: "gnom", list: sampleMessages[1], number: "+99235646222", shortInfo: "Short description about person"),
    ChatStruct(name: "Алексей", avatar: "gnom", list: sampleMessages[1], number: "+99235646222", shortInfo: "Short description about person"),
    ChatStruct(name: "Алексей", avatar: "gnom", list: sampleMessages[1], number: "+99235646222", shortInfo: "Short description about person"),
    ChatStruct(name: "Алексей", avatar: "gnom", list: sampleMessages[1], number: "+99235646222", shortInfo: "Short description about person"),
    ChatStruct(name: "Алексей", avatar: "gnom", list: sampleMessages[1], number: "+99235646222", shortInfo: "Short description about person"),
    ChatStruct(name: "Алексей", avatar: "gnom", list: sampleMessages[1], number: "+99235646222", shortInfo: "Short description about person"),
    ChatStruct(name: "Алексей", avatar: "gnom", list: sampleMessages[1], number: "+99235646222", shortInfo: "Short description about person"),
    ChatStruct(name: "Алексей", avatar: "gnom", list: sampleMessages[1], number: "+99235646222", shortInfo: "Short description about person")
]

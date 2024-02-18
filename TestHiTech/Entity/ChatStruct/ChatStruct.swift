//
//  ChatStruct.swift
//  TestHiTech
//
//  Created by Nikita Kuznetsov on 16.02.2024.
//

import Foundation

struct ChatStruct: Identifiable {
    let id = UUID()
    var name: String
    let avatar: String
    var list: MessageStruct
    var number: String
    var shortInfo: String
    var surname: String = ""
    var country: String = ""
}

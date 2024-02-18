//
//  MessageCell.swift
//  TestHiTech
//
//  Created by Nikita Kuznetsov on 16.02.2024.
//

import SwiftUI

struct MessageCell: View {
    let text: String
    let time: String
    let who: Bool
    
    var body: some View {
        ZStack {
            if who {
                HStack {
                    Spacer()
                    HStack {
                        Text(text)
                            .foregroundColor(.black)
                        Text(time)
                            .foregroundColor(.gray)
                            .font(.system(size: 12))
                            .offset(y: 5)
                    }.padding()
                        .background(Color.init(hex: "DCF7C5"))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
            } else {
                HStack {
                    HStack {
                        Text(text)
                            .foregroundColor(.black)
                        Text(time)
                            .foregroundColor(.gray)
                            .font(.system(size: 12))
                            .offset(y: 5)
                    }.padding()
                        .background(Color.init(hex: "FAFAFA"))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    MessageCell(text: "Пойдем в кино?", time: "15:12", who: false)
}

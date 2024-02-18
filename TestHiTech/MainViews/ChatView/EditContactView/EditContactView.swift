//
//  EditContactView.swift
//  TestHiTech
//
//  Created by Nikita Kuznetsov on 16.02.2024.
//

import SwiftUI

struct EditContactView: View {
    @State var person: ChatStruct = sampleChat
    @Binding var sheet: Bool

    var body: some View {
        NavigationView {
            Form {
                HStack (alignment: .top, spacing: 20){
                    Text("Name")
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                    Spacer()
                    VStack (alignment: .leading){
                        TextField("First name", text: $person.name)
                            .multilineTextAlignment(.leading)
                        Divider()
                        TextField("Last name", text: $person.surname)
                            .multilineTextAlignment(.leading)
                        Divider()
                    }
                }.padding(.horizontal, 20)

                HStack (alignment: .top, spacing: 20){
                    Text("Phone")
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                    Spacer()
                    VStack {
                        TextField("Country", text: $person.country)
                            .multilineTextAlignment(.leading)
                        Divider()
                    }
                    
                }.padding(.horizontal, 20)

                HStack (alignment: .top, spacing: 10){
                    Button(action: {}) {
                        HStack {
                            Text("Mobile")
                            .foregroundColor(.blue)
                            .fontWeight(.bold)
                            Image(systemName: "chevron.right")}}
                    Spacer()
                    TextField("Phone number", text: $person.number)
                        .multilineTextAlignment(.leading)
                }
                .padding(.horizontal, 20)
                Divider()
                Button("more fields") {
                    
                }
                .foregroundColor(.blue)
                .padding(.horizontal, 20)
                .padding(.bottom, 20)
                Button("Delete Contact") {
                    
                }
                .foregroundColor(.red)
                .padding(.horizontal, 20)
                Spacer()
            }
            .formStyle(ColumnsFormStyle())
            .navigationTitle("Edit Contact")
            .navigationBarItems(leading: Button("Cancel") {
                sheet.toggle()
            }, trailing: Button("Save") {
                sheet.toggle()
            })
        }
    }
}

//#Preview {
//    EditContactView(person: <#Binding<ChatStruct>#>)
//}

//
//  Main.swift
//  MessengerUi
//
//  Created by Inam 07 on 14/10/2566 BE.
//

import SwiftUI

struct Main: View {
    @State private var ShowScreen=false
    var body: some View {
        NavigationStack{
            ScrollView{
                ActiveNow()
                
                List {
                    ForEach(0...10 , id: \.self){message in
                        IndexRow()
                    }
                }
                .listStyle(PlainListStyle())
                .frame(height: UIScreen.main.bounds.height - 120, alignment:.leading)
                
            }.fullScreenCover(isPresented: $ShowScreen, content: {
                NewMessage()
            })
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack {
                        Image(systemName: "person.circle.fill")
                            
                        Text("Chats")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .fontWeight(.semibold)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        // Message
                        ShowScreen.toggle()
                    } label: {
                        Image(systemName: "square.and.pencil.circle.fill")
                            .resizable()
                            .frame(width: 32,height: 32)
                            .foregroundStyle(.black,Color(.systemGray5))
                    }
                }
            }
        }
    }
}

#Preview {
    Main()
}

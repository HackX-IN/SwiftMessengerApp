//
//  ActiveNow.swift
//  MessengerUi
//
//  Created by Inam 07 on 14/10/2566 BE.
//

import SwiftUI

struct ActiveNow: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            HStack(spacing:32){
                ForEach(0 ... 6 ,id: \.self) {user in
                    VStack {
                        ZStack(alignment:.bottomTrailing){
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .frame(width: 64,height: 64)
                                .foregroundColor(Color(.systemGray4))
                            ZStack {
                                Circle()
                                    .fill(.white)
                                    .frame(width: 18,height: 18)
                                Circle()
                                    .fill(Color(.systemGreen))
                                    .frame(width: 12,height: 12)
                                
                            }
                        }
                        Text("Inam")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
            }.padding()
        }
        .frame(height:106)
    }
}

#Preview {
    ActiveNow()
}

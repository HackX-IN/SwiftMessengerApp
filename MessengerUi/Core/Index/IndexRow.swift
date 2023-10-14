//
//  IndexRow.swift
//  MessengerUi
//
//  Created by Inam 07 on 14/10/2566 BE.
//

import SwiftUI

struct IndexRow: View {
    var body: some View {
        HStack(alignment: .top, spacing: 12){
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 64, height:64)
                .foregroundColor(Color(.systemGray4))
            
            VStack(alignment:.leading,spacing:4){
                Text("Joker")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                
                Text("Show me some Text")
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .foregroundColor(.gray)
                    .lineLimit(2)
                    .frame(maxWidth: UIScreen.main.bounds.width-100,alignment: .leading)
                
            }
            HStack{
                Text("Yesterday")
                Image(systemName: "chevron.right")
            }
            .font(.footnote)
            .foregroundColor(.gray)
        }
        .frame(height: 72)
    }
}

#Preview {
    IndexRow()
}

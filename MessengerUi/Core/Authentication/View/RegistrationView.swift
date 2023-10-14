//
//  RegistrationView.swift
//  MessengerUi
//
//  Created by Inam 07 on 14/10/2566 BE.
//

import SwiftUI

struct RegistrationView: View {
    @State private var name=""
    @State private var email=""
    @State private var password=""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            // Image
            Spacer()
            Image("messenger")
                .resizable()
                .scaledToFit()
                .frame(width: 80,height: 80)
                .padding()
            
            //textFeilds
            
            VStack{
                TextField("Enter your name",text: $name).fontWeight(.medium)
                    .frame(width: 360,height: 40)
                    .padding(.horizontal,8)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                TextField("Enter your email",text: $email).fontWeight(.medium)
                    .frame(width: 360,height: 40)
                    .padding(.horizontal,8)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                SecureField("Enter your password",text: $password).fontWeight(.medium)
                    .frame(width: 360,height: 40)
                    .padding(.horizontal,8)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                
            }
            Button {
                
            } label: {
                Text("Sign Up").font(.headline).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).foregroundColor(.white)
                    .frame(width: 360,height: 40)
                
                    .background(Color.blue)
                    .cornerRadius(8)
            }.padding()
            Spacer()
            Divider()
            Button{
                dismiss()
            } label: {
                HStack(spacing:3){
                    Text("Already have an account?")
                    Text("Sign-in").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }.font(.footnote).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                
            }.padding(.vertical)
        }
    }
}

#Preview {
    RegistrationView()
}

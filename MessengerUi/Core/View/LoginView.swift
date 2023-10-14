//
//  LoginView.swift
//  MessengerUi
//
//  Created by Inam 07 on 14/10/2566 BE.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email=""
    @State private var password=""
    
    var body: some View {
        NavigationStack{
            
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
                    print("Hello")
                } label: {
                    Text("Forget Password?").font(.footnote).fontWeight(.semibold).padding(.top,8)
                        .padding(.trailing,20)
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                
                //Login Button
                
                
                Button {
                    
                } label: {
                    Text("Login").font(.headline).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).foregroundColor(.white)
                        .frame(width: 360,height: 40)
                    
                        .background(Color.blue)
                        .cornerRadius(8)
                }.padding()
                
                //Lines
                
                HStack {
                    Rectangle().frame(width: (UIScreen.main.bounds.width/2)-40,height: 0.5)
                    
                    Text("OR")
                    
                    Rectangle().frame(width: (UIScreen.main.bounds.width/2)-40,height: 0.5)
                    
                    
                }.foregroundColor(.gray)
                
                HStack{
                    Image("facebook").resizable().scaledToFit().frame(width: 30,height: 30)
                    Text("Login with facebook").font(.subheadline).fontWeight(.medium).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    
                }.padding()
                Spacer()
                Divider()
                NavigationLink{
                    RegistrationView().navigationBarBackButtonHidden()
                } label: {
                    HStack(spacing:3){
                        Text("Don't have an account?")
                        Text("Sign-up").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }.font(.footnote)
                    
                }.padding(.vertical)
            }
        }.background(Color.white)
    }
}

#Preview {
    LoginView()
}

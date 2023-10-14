//
//  Profile.swift
//  MessengerUi
//
//  Created by Inam 07 on 14/10/2566 BE.
//

import SwiftUI
import PhotosUI

struct Profile: View {
    @StateObject var viewModel = ProfileView()
    var body: some View {
        VStack{
            VStack{
                PhotosPicker(selection:$viewModel.SelectedItem) {
                    if let profileImage=viewModel.profileImage{
                        profileImage.resizable()
                            .scaledToFill()
                            .frame(width: 65,height: 65)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    } else{
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: 65,height: 65)
                            .foregroundColor(Color(.systemGray5))
                    }
                }
                
                
                Text("Inam")
                    .font(.title2)
                    .fontWeight(.semibold)
                
            }
            
            List{
                Section{
                    ForEach(Settingoptions.allCases){option in
                        HStack{
                            Image(systemName: option.imageName)
                                .resizable()
                                .frame(width: 24,height: 24)
                                .foregroundColor(option.imagebackground)
                            
                            
                            Text(option.ttile)
                                .font(.subheadline)
                        }
                        
                    }
                }
                Section {
                    Button("Log Out") {
                        
                    }
                    Button("Delete Account") {
                        
                    }
                }
                .foregroundColor(.red)
               
            }
        }
    }
}

#Preview {
    Profile()
}

//
//  profileViewModel.swift
//  MessengerUi
//
//  Created by Inam 07 on 14/10/2566 BE.
//

import Foundation
import SwiftUI
import PhotosUI

class ProfileView:ObservableObject{
    @Published var SelectedItem: PhotosPickerItem? {
        
        didSet {Task {try await loadImage()}}
    }
    
    @Published var profileImage:Image?
    
    func loadImage() async throws {
        guard let item = SelectedItem else {return}
        guard let imageData=try await item.loadTransferable(type: Data.self) else {return}
        guard let uiImage=UIImage(data: imageData) else {return}
        self.profileImage=Image(uiImage: uiImage)
    }
}

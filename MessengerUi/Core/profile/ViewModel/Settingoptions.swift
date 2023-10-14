//
//  Settingoptions.swift
//  MessengerUi
//
//  Created by Inam 07 on 14/10/2566 BE.
//

import SwiftUI
import Foundation


enum Settingoptions :Int,CaseIterable,Identifiable {
    case darkMode
    case activeStatus
    case accessibilty
    case privacy
    case notifications
    
    
    var ttile:String{
        switch self {
        case .darkMode: return "Dark Mode"
        case .activeStatus: return "Active Status"
        case .accessibilty: return "Accessibilty"
        case.privacy: return "Privacy and safety"
        case.notifications: return "Notifications"
        }
    }
    var imageName:String{
        switch self {
        case .darkMode: return "moon.circle.fill"
        case .activeStatus: return "message.badge.circle.fill"
        case .accessibilty: return "person.circle.fill"
        case.privacy: return "lock.circle.fill"
        case.notifications: return "bell.circle.fill"
        }
    }
    
    var imagebackground: Color {
        switch self {
        case .darkMode: return .black
        case .activeStatus: return Color(.systemGreen)
        case .accessibilty: return .black
        case.privacy: return Color(.systemBlue)
        case.notifications: return Color(.systemPurple)
        }
    }
    
    var id: Int {return self.rawValue}
}

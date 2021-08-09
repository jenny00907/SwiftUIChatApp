//
//  StatusViewModel.swift
//  SwiftUIChat
//
//  Created by Jenny Woorim Lee on 2021/08/05.
//

import SwiftUI

class StatusViewModel: ObservableObject {
    @Published var status: UserStatus = .notConfigured
    
    func updateStatus(_ status: UserStatus) {
        self.status = status
    }
}

enum UserStatus: Int, CaseIterable {
    case notConfigured
    case available
    case busy
    case meeting
    case urgentCallsOnly
    
    var title: String {
        switch self {
        case .notConfigured: return "Click here to update the status"
        case .available: return "Available"
        case .busy: return "Busy"
        case .meeting: return "In a meeting"
        case .urgentCallsOnly: return "Urgent calls only"
        }
    }
}

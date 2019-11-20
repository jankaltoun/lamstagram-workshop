//
//  AuthenticatedUser.swift
//  Lamstagram
//
//  Created by Jan Kaltoun on 16/11/2019.
//  Copyright © 2019 Jan Kaltoun. All rights reserved.
//

import Foundation

final class AuthenticatedUserStore: ObservableObject {
    @Published var user: User?
    
    init(user: User?) {
        self.user = user
    }
}

//
//  User.swift
//  Lamstagram
//
//  Created by Jan Kaltoun on 16/11/2019.
//  Copyright © 2019 Jan Kaltoun. All rights reserved.
//

import SwiftUI

struct User: Identifiable {
    let id: Int
    let nickname: String
    let name: String
    let imageName: String
    let numberOfPosts: Int
    let numberOfFollowers: Int
    let numberFollowing: Int
    let description: String
    
    var friends: [User] {
        MockData.users.filter { $0.id != id }
    }
    
    var posts: [Post] {
        MockData.posts.filter { $0.user.id == id }
    }
}

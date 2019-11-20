//
//  FeedItem.swift
//  Lamstagram
//
//  Created by Jan Kaltoun on 16/11/2019.
//  Copyright © 2019 Jan Kaltoun. All rights reserved.
//

import SwiftUI

struct Post: Identifiable {
    let id: Int
    let imageName: String
    let text: String
    
    let user: User
}

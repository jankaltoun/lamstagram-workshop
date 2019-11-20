//
//  FeedStore.swift
//  Lamstagram
//
//  Created by Jan Kaltoun on 16/11/2019.
//  Copyright © 2019 Jan Kaltoun. All rights reserved.
//

import Foundation

final class FeedStore: ObservableObject {
    @Published var posts: [Post] = []
    
    init(user: User?) {
        self.posts = user?.posts ?? MockData.posts
        
        // Bonus task
        /*DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.posts = user?.posts ?? MockData.posts
        }*/
    }
}

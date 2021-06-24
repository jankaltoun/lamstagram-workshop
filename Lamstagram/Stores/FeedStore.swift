//
//  FeedStore.swift
//  Lamstagram
//
//  Created by Jan Kaltoun on 16/11/2019.
//  Copyright © 2019 Jan Kaltoun. All rights reserved.
//

import Foundation

final class FeedStore: ObservableObject {
    @Published var isLoading = false
    @Published var posts: [Post] = []
    
    func setUser(user: User?) {
        posts = user?.posts ?? MockData.posts
    }
    
    // Bonus task #2
//    func setUser(user: User?) {
//        isLoading = true
//
//        // Bonus task
//        DispatchQueue.main.asyncAfter(deadline: .now() + 5) { [weak self] in
//            self?.posts = user?.posts ?? MockData.posts
//
//            self?.isLoading = false
//        }
//    }
}

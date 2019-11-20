//
//  LikedPostsStore.swift
//  Lamstagram
//
//  Created by Jan Kaltoun on 16/11/2019.
//  Copyright © 2019 Jan Kaltoun. All rights reserved.
//

import Foundation

final class LikedPostsStore: ObservableObject {
    @Published var postIDs = [Int]()
    
    func isLiked(post: Post) -> Bool {
        return postIDs.contains(post.id)
    }
    
    func toggle(post: Post) {
        guard isLiked(post: post) else {
            postIDs.append(post.id)
            
            return
        }
        
        postIDs = postIDs.filter { $0 != post.id }
    }
}

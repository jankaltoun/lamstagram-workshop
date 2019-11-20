//
//  Chunk.swift
//  Lamstagram
//
//  Created by Jan Kaltoun on 16/11/2019.
//  Copyright © 2019 Jan Kaltoun. All rights reserved.
//

import Foundation

struct Chunk<T> {
    var id: Int
    var items: [T]
}

extension Chunk: Identifiable {}

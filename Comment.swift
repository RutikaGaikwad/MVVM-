//
//  Comment.swift
//  CommentMVVM
//
//  Created by APPLE on 09/08/24.
//

import Foundation

struct Comment: Codable, Identifiable{
    var postId:  Int
    var id: Int
    var name: String
    var email: String
    var body: String
}

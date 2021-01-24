//
//  PostData.swift
//  HackerNewsSwiftUI
//
//  Created by Nirav Patel on 1/24/21.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}


struct Post: Decodable, Identifiable {
    
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}

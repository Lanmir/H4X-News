//
//  PostData.swift
//  H4X News
//
//  Created by Varshaa vasundra sivakumar on 02/06/25.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String{
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url :String?
}

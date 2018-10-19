//
//  ToDoModel.swift
//  NewtworkDemo
//
//  Created by Bablu Joshi on 19/10/18.
//  Copyright © 2018 BJ. All rights reserved.
//

import Foundation

struct ToDoModel: Codable {
    let userId : Int?
    let id : Int?
    let title : String?
    let completed : Bool?
    
    enum CodingKeys: String, CodingKey {
        
        case userId = "userId"
        case id = "id"
        case title = "title"
        case completed = "completed"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        userId = try values.decodeIfPresent(Int.self, forKey: .userId)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        title = try values.decodeIfPresent(String.self, forKey: .title)
        completed = try values.decodeIfPresent(Bool.self, forKey: .completed)
    }
    
}

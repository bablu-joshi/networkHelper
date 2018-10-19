//
//  APIHelper.swift
//  NewtworkDemo
//
//  Created by Bablu Joshi on 19/10/18.
//  Copyright © 2018 BJ. All rights reserved.
//

import Foundation

struct GetAllToDos: RequestType {
    typealias ResponseType = [ToDoModel]
    var data: RequestData {
        return RequestData(path: "https://jsonplaceholder.typicode.com/todos")
    }
}

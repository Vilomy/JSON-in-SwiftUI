//
//  Post.swift
//  NetworkingSwiftUI
//
//  Created by Gleb Zadonskiy on 30.06.2020.
//  Copyright © 2020 Gleb Zadonskiy. All rights reserved.
//

import Foundation
struct Post: Codable {
    let id: Int
    let title: String
    let body: String
}

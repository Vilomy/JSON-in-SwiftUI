//
//  WebServices.swift
//  NetworkingSwiftUI
//
//  Created by Gleb Zadonskiy on 30.06.2020.
//  Copyright © 2020 Gleb Zadonskiy. All rights reserved.
//

import Foundation

class  WebServices {
        
    func getPosts (completion: @escaping ([Post]?) -> ()) {
        guard let url = URL (string: "https://jsonplaceholder.typicode.com/posts") else {
            fatalError("Invalid Url")
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            
           let posts = try? JSONDecoder().decode([Post].self, from: data)
            DispatchQueue.main.async {
                completion(posts)
            }
        }.resume()
    }
}


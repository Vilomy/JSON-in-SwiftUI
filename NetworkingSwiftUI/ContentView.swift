//
//  ContentView.swift
//  NetworkingSwiftUI
//
//  Created by Gleb Zadonskiy on 30.06.2020.
//  Copyright © 2020 Gleb Zadonskiy. All rights reserved.
// https://www.youtube.com/watch?v=m5ZxZfc9WmQ&list=WL&index=35&t=14s

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var postListVM = PostListViewModel()
    
    
    var body: some View {
        List(self.postListVM.posts, id: \.id) { post in
            VStack(alignment: .leading){
                Text(post.title).font(.title)
                Text(post.body)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

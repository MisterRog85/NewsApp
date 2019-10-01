//
//  Article.swift
//  NewsApp
//
//  Created by William Tomas on 01/10/2019.
//  Copyright © 2019 William Tomas. All rights reserved.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}

extension ArticleList {
    static var all: Resource<ArticleList> = {
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=fr&apiKey=9a9df2bc29cb4483a36a484cf4dc721e")
        return Resource(url: url!)
    }()
}

struct Article: Decodable {
    let title: String
    let description: String?
}

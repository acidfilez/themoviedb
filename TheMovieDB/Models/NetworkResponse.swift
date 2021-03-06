//
//  TopRatedResponse.swift
//  TheMovieDB
//
//  Created by Fransico D. on 2/21/19.
//  Copyright © 2019 whatever.cl. All rights reserved.
//

import Foundation

// swiftlint:disable identifier_name

/// This is the response from both endpoints.
struct NetworkResponse: Codable {
    let page, totalResults, totalPages: Int
    let results: [MovieResult]

    enum CodingKeys: String, CodingKey {
        case page
        case totalResults = "total_results"
        case totalPages = "total_pages"
        case results
    }
}

/// This is the model, that is used on the array results.
struct MovieResult: Codable {
    let voteCount, id: Int
    let video: Bool
    let voteAverage: Double
    let title: String
    let popularity: Double
    let posterPath: String
    let originalLanguage: String
    let originalTitle: String
    let genreIDS: [Int]
    let backdropPath: String
    let adult: Bool
    let overview, releaseDate: String

    enum CodingKeys: String, CodingKey {
        case voteCount = "vote_count"
        case id, video
        case voteAverage = "vote_average"
        case title, popularity
        case posterPath = "poster_path"
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case genreIDS = "genre_ids"
        case backdropPath = "backdrop_path"
        case adult, overview
        case releaseDate = "release_date"
    }
}

// swiftlint:enable identifier_name

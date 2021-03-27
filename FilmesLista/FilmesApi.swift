//
//  FilmesApi.swift
//  FilmesLista
//
//  Created by Renilson Moreira Ferreira on 26/03/21.
//  Copyright © 2021 Renilson Moreira Ferreira. All rights reserved.
//

//import Foundation
//
//
//    // MARK: - Welcome
//    struct Filmes: Codable {
//        let page: Int
//        let results: [Result]
//        let totalPages, totalResults: Int
//
//        enum CodingKeys: String, CodingKey {
//            case page, results
//            case totalPages = "total_pages"
//            case totalResults = "total_results"
//        }
//    }
//
//    // MARK: - Result
//    struct Result: Codable {
//        let overview: String
//        let releaseDate, title: String?
//        let adult: Bool?
//        let backdropPath: String
//        let genreIDS: [Int]
//        let voteCount, id: Int
//        let originalTitle: String?
//        let posterPath: String
//        let originalLanguage: OriginalLanguage
//        let video: Bool?
//        let voteAverage, popularity: Double
//        let mediaType: MediaType
//        let originalName, firstAirDate, name: String?
//        let originCountry: [String]?
//
//        enum CodingKeys: String, CodingKey {
//            case overview
//            case releaseDate = "release_date"
//            case title, adult
//            case backdropPath = "backdrop_path"
//            case genreIDS = "genre_ids"
//            case voteCount = "vote_count"
//            case id
//            case originalTitle = "original_title"
//            case posterPath = "poster_path"
//            case originalLanguage = "original_language"
//            case video
//            case voteAverage = "vote_average"
//            case popularity
//            case mediaType = "media_type"
//            case originalName = "original_name"
//            case firstAirDate = "first_air_date"
//            case name
//            case originCountry = "origin_country"
//        }
//    }
//
//    enum MediaType: String, Codable {
//        case movie = "movie"
//        case tv = "tv"
//    }
//
//    enum OriginalLanguage: String, Codable {
//        case en = "en"
//        case es = "es"
//        case ja = "ja"
//    }
//
//
//
//
//

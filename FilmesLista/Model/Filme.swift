// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let filmeAPI = try? newJSONDecoder().decode(FilmeAPI.self, from: jsonData)

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let filme = try? newJSONDecoder().decode(Filme.self, from: jsonData)

import Foundation

// MARK: - Filme
class Filme: Codable {
    let page: Int
    let results: [Result]
    let totalPages, totalResults: Int
    
    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
    
    init(page: Int, results: [Result], totalPages: Int, totalResults: Int) {
        self.page = page
        self.results = results
        self.totalPages = totalPages
        self.totalResults = totalResults
    }
}

// MARK: - Result
class Result: Codable {
    let title: String?
    let overview: String
    let releaseDate: String?
    let adult: Bool?
    let backdropPath: String
    let genreIDS: [Int]
    let voteCount: Int
    let originalLanguage: OriginalLanguage
    let originalTitle: String?
    let id: Int
    let posterPath: String
    let video: Bool?
    let voteAverage, popularity: Double
    let mediaType: MediaType
    let firstAirDate, originalName: String?
    let originCountry: [String]?
    let name: String?
    
    enum CodingKeys: String, CodingKey {
        case title, overview
        case releaseDate = "release_date"
        case adult
        case backdropPath = "backdrop_path"
        case genreIDS = "genre_ids"
        case voteCount = "vote_count"
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case id
        case posterPath = "poster_path"
        case video
        case voteAverage = "vote_average"
        case popularity
        case mediaType = "media_type"
        case firstAirDate = "first_air_date"
        case originalName = "original_name"
        case originCountry = "origin_country"
        case name
    }
    
    init(title: String?, overview: String, releaseDate: String?, adult: Bool?, backdropPath: String, genreIDS: [Int], voteCount: Int, originalLanguage: OriginalLanguage, originalTitle: String?, id: Int, posterPath: String, video: Bool?, voteAverage: Double, popularity: Double, mediaType: MediaType, firstAirDate: String?, originalName: String?, originCountry: [String]?, name: String?) {
        self.title = title
        self.overview = overview
        self.releaseDate = releaseDate
        self.adult = adult
        self.backdropPath = backdropPath
        self.genreIDS = genreIDS
        self.voteCount = voteCount
        self.originalLanguage = originalLanguage
        self.originalTitle = originalTitle
        self.id = id
        self.posterPath = posterPath
        self.video = video
        self.voteAverage = voteAverage
        self.popularity = popularity
        self.mediaType = mediaType
        self.firstAirDate = firstAirDate
        self.originalName = originalName
        self.originCountry = originCountry
        self.name = name
    }
}

enum MediaType: String, Codable {
    case movie = "movie"
    case tv = "tv"
}

enum OriginalLanguage: String, Codable {
    case en = "en"
    case ja = "ja"
    case ru = "ru"
}

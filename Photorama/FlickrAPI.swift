//
//  FlickrAPI.swift
//  Photorama
//
//  Created by Mehmet Deniz Cengiz on 3/16/22.
//

import Foundation

enum EndPoint: String {
    case interestingPhotos = "flickr.interestingness.getList"
}

struct FlickrAPI {
    
    private static let baseURLString = "https://api.flickr.com/services/rest"
    private static let apiKey = "a6d819499131071f158fd740860a5a88"
    
    static var interestingPhotosURL: URL {
        get {
            return flickrURL(endpoint: .interestingPhotos, parameters: ["extras": "url_z,date_taken"])
        }
    }
    
    private static func flickrURL(endpoint: EndPoint, parameters: [String:String]?) -> URL {
        
        var components = URLComponents(string: baseURLString)!
        var queryItems = [URLQueryItem]()
        
        let baseParams = [
            "method" : endpoint.rawValue,
            "format" : "json",
            "nojsoncallback" : "1",
            "api_key" : apiKey]
        
        for (key, value) in baseParams {
            let item = URLQueryItem(name: key, value: value)
            queryItems.append(item)
        }
        
        if let additionalParams = parameters {
            for (key, value) in additionalParams {
                let item = URLQueryItem(name: key, value: value)
                queryItems.append(item)
            }
        }
        components.queryItems = queryItems
        
        return components.url!
    }
    
}

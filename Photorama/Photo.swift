//
//  Photo.swift
//  Photorama
//
//  Created by Mehmet Deniz Cengiz on 3/17/22.
//

import Foundation

class Photo: Codable {
    
    let title: String
    let remoteUrl: URL?
    let photoID: String
    let dateTaken: Date
    
    enum CodingKeys: String, CodingKey {
        case title
        case remoteUrl = "url_z"
        case photoID = "id"
        case dateTaken = "datetaken"
    }
    
    init(title: String, remoteURL: URL, photoID: String, dateTaken: Date) {
        self.title = title
        self.remoteUrl = remoteURL
        self.photoID = photoID
        self.dateTaken = dateTaken
    }
}

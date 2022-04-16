//
//  Photo+CoreDataProperties.swift
//  Photorama
//
//  Created by Mehmet Deniz Cengiz on 4/15/22.
//
//

import Foundation
import CoreData


extension Photo {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Photo> {
        return NSFetchRequest<Photo>(entityName: "Photo")
    }

    @NSManaged public var remoteURL: URL?
    @NSManaged public var dateTaken: Date?
    @NSManaged public var title: String?
    @NSManaged public var photoID: String?

}

extension Photo : Identifiable {

}

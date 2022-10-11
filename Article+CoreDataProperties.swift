//
//  Article+CoreDataProperties.swift
//  diary
//
//  Created by Yonghun Roh on 2022/10/11.
//
//

import Foundation
import CoreData


extension Article {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Article> {
        return NSFetchRequest<Article>(entityName: "Article")
    }

    @NSManaged public var title: String?
    @NSManaged public var content: String?
    @NSManaged public var createdAt: NSDate?

}

extension Article : Identifiable {

}

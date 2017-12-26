//
//  StudentLocation.swift
//  OnTheMap
//
//  Created by User on 12/23/17.
//  Copyright © 2017 administrator. All rights reserved.
//

import UIKit

struct StudentLocation {
    let objectId: String?
    let uniqueKey: String?
    let firstName: String?
    let lastName: String?
    let mapString: String?
    let mediaURL: String?
    let latitude: Double?
    let longitude: Double?
    let createdAt: Date?
    let updatedAt: Date?
    
    init(dictionary: OTMDictionary) {
        uniqueKey = dictionary["uniqueKey"] as? String
        objectId = dictionary["objectId"] as? String
        firstName = dictionary["firstName"] as? String
        lastName = dictionary["lastName"] as? String
        mapString = dictionary["mapString"] as? String
        mediaURL = dictionary["mediaURL"] as? String
        latitude = dictionary["latitude"] as? Double
        longitude = dictionary["longitude"] as? Double
        createdAt = dictionary["createdAt"] as? Date
        updatedAt = dictionary["updatedAt"] as? Date
    }
    
    static func studentLocationsFromResults(_ results: [OTMDictionary]) -> [StudentLocation] {
        
        var movies = [StudentLocation]()
        
        // iterate through array of dictionaries, each Movie is a dictionary
        for result in results {
            movies.append(StudentLocation(dictionary: result))
        }
        
        return movies
    }

}

// MARK: - TMDBMovie: Equatable

extension StudentLocation: Equatable {}

func ==(lhs: StudentLocation, rhs: StudentLocation) -> Bool {
    return lhs.objectId == rhs.objectId
}

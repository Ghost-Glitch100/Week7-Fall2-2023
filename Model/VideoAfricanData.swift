//
//  VideoAfricanData.swift
//  Africa
//
//  Created by jose lara on 12/13/23.
//

import Foundation




struct VideoAfricanData {
    
    
    func getAnimalVido() -> [Video] {
        return [Video(id: "cheetah", name: "Cheetah", headline: "Cheetah walking in the savannah"),
                Video(id: "elephant", name: "Elephant", headline: "African elephant with calf walking"),
                Video(id: "giraffe", name: "Giraffe", headline: "Lonely giraffe walking in the savannah"),
                Video(id: "gorilla", name: "Gorilla", headline: "Western lowland adult gorilla walking"),
                Video(id: "hippo", name: "Hippo", headline: "A cow hippo and her calf together in the water"),
                Video(id: "lioness", name: "Lioness", headline: "African lioness slowly walking on the African savannah"),
                Video(id: "lion", name: "Lion", headline: "Close-up of a growling African lion"),
                Video(id: "ostrich", name: "Ostrich", headline: "Cock ostrich grazing on the savannah"),
                Video(id: "rhino", name: "Rhino", headline: "Southern White Rhino walking in the grass"),
                Video(id: "zebra", name: "Zebra", headline: "Adult striped zebra grazing rusty grass in summer")]
    }
    func getVideos() -> [String] {
        return ["cheetah", "elephant", "giraffe", "gorilla", "hippo", "lion", "lioness", "ostrich", "rhino", "zebra"]
    }
}

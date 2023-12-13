//
//  AnimalData.swift
//  Africa
//
//  Created by jose lara on 12/13/23.
//

import Foundation



struct AnimalData {
    func getAnimalImage() -> [AnimalImage] {
        return [AnimalImage(name: "Buffalo", imageName: "buffalo-1"),
                AnimalImage(name: "Cheetah", imageName: "cheetah-1"),
                AnimalImage(name: "Elephant", imageName: "elephant-1"),
                AnimalImage(name: "Giraffe", imageName: "giraffe-1"),
                AnimalImage(name: "Gorilla", imageName: "gorilla-1"),
                AnimalImage(name: "Hippo", imageName: "hippo-1"),
                AnimalImage(name: "Lion", imageName: "lion-1"),
                AnimalImage(name: "Meerkat", imageName: "meerkat-1"),
                AnimalImage(name: "Ostrich", imageName: "ostrich-1"),
                AnimalImage(name: "Rihnoceros", imageName: "rhinoceros-1"),
                AnimalImage(name: "Wild Dog", imageName: "wild-dog-1"),
                AnimalImage(name: "Zebra", imageName: "zebra-1")]
    }
    func getPhotos() -> [String] {
        
        return ["buffalo-1", "cheetah-1", "elephant-1", "giraffe-1", "gorilla-1", "hippo-1", "lion-1", "meerkat-1", "ostrich-1", "rhinoceros-1", "wild-dog-1", "zebra-1"]
    }
}

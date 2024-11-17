//
//  Planet.swift
//  Project1
//
//  Created by Enkhtsetseg Unurbayar on 11/15/24.
//

import Foundation

// MARK: - Planet
struct PlanetPage: Decodable {
    let next: String?
    let count: Int
    let previous: String?
    let results: [PlanetElement]
   
}

// MARK: - PlanetElement
struct PlanetElement: Decodable {
    
    let name, rotationPeriod, orbitalPeriod, diameter: String
    let climate, gravity, terrain, surfaceWater: String
    let population: String
    let residents, films: [String]
    let created, edited: String
    let url: String

    enum CodingKeys: String, CodingKey {
        case name = "name"
        case rotationPeriod = "rotation_period"
        case orbitalPeriod = "orbital_period"
        case diameter = "diameter"
        case climate = "climate"
        case gravity = "gravity"
        case terrain = "terrain"
        case surfaceWater = "surface_water"
        case population = "population"
        case residents = "residents"
        case films = "films"
        case created = "created"
        case edited = "edited"
        case url = "url"
     
    }
}






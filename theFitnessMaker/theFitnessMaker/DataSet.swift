//
//  DataSet.swift
//  theFitnessMaker
//
//  Created by ONIZUKA  on 12/02/2021.
//  Copyright © 2021 ONIZUKA . All rights reserved.
//

import Foundation
import SwiftUI


struct Workout: Identifiable {
//variable ID is being set to the returned unique identifier gener method UUID ()
    var id = UUID()
    
//variables names with their respective types
    var day: String
    var bodyPart: String
    var image: String
    var routine: [String]
}

let wworkoutsData = [
    Workout(day: "Monday", bodyPart: "Chest", image: "push-ups", routine: ["Warmup", "Pushups","Cool Down"]),
    Workout(day: "Tuesday", bodyPart: "Back", image: "fitness-workout", routine: ["Warmup","Pullups","Cool Down"]),
    Workout(day: "Wednesday", bodyPart: "Arms", image: "jeff-tumale-bdIWJKLp98U-unsplash", routine: ["Warmup", "Curls", "Cool Down"])
]



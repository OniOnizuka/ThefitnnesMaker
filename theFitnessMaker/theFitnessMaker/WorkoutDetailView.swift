//
//  WorkoutDetailView.swift
//  theFitnessMaker
//
//  Created by ONIZUKA  on 15/02/2021.
//  Copyright © 2021 ONIZUKA . All rights reserved.
//

import SwiftUI

@available(iOS 13.0, *)
@available(iOS 13.0, *)
@available(iOS 13.0, *)
@available(iOS 13.0, *)
@available(iOS 13.0, *)
@available(iOS 13.0, *)
@available(iOS 13.0, *)
@available(iOS 13.0, *)
@available(iOS 13.0, *)
@available(iOS 13.0, *)
@available(iOS 13.0, *)
@available(iOS 13.0, *)


struct WorkoutDetailView: View {
    
    var workout: Workout
    
    var body: some View {
        VStack{
            Text(workout.day)
            Text(workout.bodyPart)
        }
        
    }
}

@available(iOS 13.0, *)
@available(iOS 13.0, *)
struct WorkoutDetailView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutDetailView(workout: Workout(day: "Monday", bodyPart: "Abs", image: "images", routine: ["warmups","Knees Up","Planks"]))
    }
}

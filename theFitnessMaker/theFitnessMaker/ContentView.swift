//
//  ContentView.swift
//  theFitnessMaker
//
//  Created by ONIZUKA  on 17/01/2021.
//  Copyright © 2021 ONIZUKA . All rights reserved.
//

import SwiftUI

@available(iOS 13.0, *)
struct ContentView: View {
   
    let workouts = workoutsData
    
    var body: some View {
        NavigationView {
        
            VStack(alignment: .leading) {
                
                //Main Card View
                ZStack {
                    Image("fitness-workout")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height:300)
                    
                    
                    //Vertical Stack - where objects are stacked vertically
                    VStack {
                        
                        Spacer()
                        
                        Text("Full Body Workout")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                        Text("For Beginners")
                            .fontWeight(.regular)
                            .foregroundColor(.white)
                    }
                    .padding()
                    .frame(width: 380)
                    .background(Color(#colorLiteral(red: 0.1298420429, green: 0.1298461258, blue: 0.1298439503, alpha: 0.5)))
                }
                .frame(width:380, height: 300)
                .cornerRadius(20)
                .clipped()
                .shadow(radius: 8)
                //.padding(.top,20)
                .padding()
                
                Text("Weekly Plan")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding()
                
                // Stack where the inner elements are arranged/stacked horizontally
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing:30) {
                        ForEach(workouts){ Workout in
                            
                            // day card
                            NavigationLink(destination: WorkoutDetailView()){
                                ZStack {
                                    Image(Workout.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(height:220)
                                    
                                    //Vertical Stack - where objects are stacked vertically
                                    VStack {
                                        
                                        Spacer()
                                        
                                        Text(Workout.day)
                                            .font(.title)
                                            .fontWeight(.semibold)
                                            .foregroundColor(.white)
                                        Text(Workout.bodyPart)
                                            .fontWeight(.regular)
                                            .foregroundColor(.white)
                                    }
                                    .padding()
                                    .frame(width: 150)
                                    .background(Color(#colorLiteral(red: 0.1298420429, green: 0.1298461258, blue: 0.1298439503, alpha: 0.5)))
                                    
                                }
                                .frame(width:150, height: 220)
                                .clipped()
                                .cornerRadius(20)
                                .shadow(radius: 8)
                            }
                        }
                        .padding()
                    }
                    .offset(x:0, y: -40)
                    
                    Spacer()
                }
                .navigationBarTitle("Home Workouts")
            }
        }
    }
    
    @available(iOS 13.0, *)
    @available(iOS 13.0, *)
    @available(iOS 13.0, *)
    @available(iOS 13.0, *)
    @available(iOS 13.0, *)
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

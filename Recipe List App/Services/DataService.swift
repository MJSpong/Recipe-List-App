//
//  DataService.swift
//  Recipe List App
//
//  Created by Matthew Spong on 5/2/21.
//

import Foundation

class DataService {
    
    // a static method can be called directly on the class or data type, without creating an instance
    static func getLocalData() -> [Recipe] {
        
        // Parse local json file
        
        // Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        // Check if pathString is not nil, otherwise...
        guard pathString != nil else {
            return [Recipe]()
        }
        
        // Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            // Create a data object
            let data = try Data(contentsOf: url)
            
            // Decode the data with JSON decoder
            let decoder = JSONDecoder()
            
            do {
            
                let recipeData = try decoder.decode([Recipe].self, from: data)
            
                // Add the unique IDs
                for r in recipeData {
                    r.id = UUID()
                    
                    for i in r.ingredients {
                        i.id = UUID()
                    }
                }
                
                
                // Return the recipes
                return recipeData
            }
        }
        catch {
            // error with getting data
            print("error")
            
        }
        
        return [Recipe]()
        
        // Create a data object
        
        // Decode the data with a JSON decoder
        
        // Add the unique IDs
        
        // Return the recipes
    }
}

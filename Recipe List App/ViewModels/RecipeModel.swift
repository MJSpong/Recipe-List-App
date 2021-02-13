//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by Matthew Spong on 5/2/21.
//

import Foundation

class RecipeModel: ObservableObject {

    @Published var recipes = [Recipe]()
    
    init() {
        
        // Get the data
        self.recipes = DataService.getLocalData()
    }
}

//
//  RecipeTabView.swift
//  Recipe List App
//
//  Created by Matthew Spong on 13/2/21.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        
        TabView {
            RecipeFeaturedView()
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Featured")
                }
            
            ContentView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("List")
                }
        }
        .environmentObject(RecipeModel())
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}

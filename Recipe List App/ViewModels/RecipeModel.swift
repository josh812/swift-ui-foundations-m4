//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by J M on 1/22/22.
//

import Foundation

class RecipeModel: ObservableObject {
    @Published var recipes = [Recipe]()
    
    init() {
        self.recipes = DataService.getLocalData()
    }
}

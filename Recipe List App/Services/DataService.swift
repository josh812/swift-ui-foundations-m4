//
//  DataService.swift
//  Recipe List App
//
//  Created by J M on 1/23/22.
//

import Foundation

class DataService {
    static func getLocalData() -> [Recipe] {
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        guard pathString != nil else {
            return [Recipe]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            
            do {
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                for r in recipeData {
                    r.id = UUID()
                    
                    // Add unique ID's to Recipe Ingredients
                    for i in r.ingredients {
                        i.id = UUID()
                    }
                }
                
                return recipeData
            } catch {
                print(error)
            }
        } catch {
            print(error)
        }
        return [Recipe]()
    }
}

//
//  RecipeTabView.swift
//  Recipe List App
//
//  Created by J M on 1/26/22.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        TabView {
            RecipeFeaturedView()
                .tabItem {
                    VStack {
                        Image(systemName: "star.circle")
                        Text("Featured")
                    }
                }
            
            RecipeListView()
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet.circle")
                        Text("List")
                    }
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

//
//  ContentView.swift
//  Shared
//
//  Created by Dustin Olsen on 3/30/22.
//

import SwiftUI


struct ContentView: View {
   
    var ideaDice = IdeaDice()
    @State private var ideaText = ""
    @State private var showingSaveSheet = false
    
    func saveIdea() {
        showingSaveSheet.toggle()
    }
    
    var body: some View {
        NavigationView {
            
            TabView {
                
                
                DiceRollView()
                    .tabItem {
                        Text("Dice")
                    }
                
                
                SavedIdeasView()
                    .tabItem {
                        Text("Saved Ideas")
                    }
                
                
            }
            
            
            
            
//            .toolbar {
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    Text("Saved")
//
//                    // Change to NavigationLink
//                }
//                ToolbarItem {
//                    Button(action: saveIdea) {
//                        Label("Add Item", systemImage: "plus")
//                    }
//                }
//            }
        
        }
    }

    

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}

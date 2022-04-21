//
//  IdeaDiceView.swift
//  InventionDice
//
//  Created by Dustin Olsen on 3/30/22.
//

import SwiftUI

struct IdeaDiceView: View {
    
    let ideaAspect: String
    let die: Die
    
    
    
    var body: some View {
        VStack {
            
            Spacer()
            
            
            
            switch die {
                
            case .materials:
                Section {
                    
                    switch ideaAspect {
                        
                    case "Wood":
                        Image(systemName: "leaf") // Wood
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        
                        
                    case "Metal":
                        Image(systemName: "paperclip") // Metal
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    case "Plastic":
                        Image(systemName: "opticaldisc" ) // Plastic
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    case "Edible":
                        Image(systemName: "fork.knife.circle.fill") // Edible
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    case "Paper":
                        Image(systemName: "paperplane") // Paper
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    case "Organic":
                        Image(systemName: "leaf.arrow.triangle.circlepath") // Organic
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    default:
                        Text("?")
                    }
                    
                    
                }
                
            case .power:
                Section {
                    
                    switch ideaAspect {
                    case "Electric":
                        Image(systemName: "bolt")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                             // Electric
                        
                    case "Solar":
                        Image(systemName: "sun.max") // Solar
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    case "Wind":
                        Image(systemName: "wind") // Wind
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    case "Water":
                        Image(systemName: "drop") // Water
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    case "Clockwork":
                        Image(systemName: "gear.circle") // Clockwork
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    case "Manual":
                        Image(systemName: "hand.raised") // Manual
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    default:
                        Text("?")
                        
                    }
                    
                    
                    
                }
            case .scale:
                Section {
                    
                    switch ideaAspect {
                        
                    case "Wearable":
                        Image(systemName: "applewatch") // wearable
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    case "Portable":
                        Image(systemName: "briefcase") // portable
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    case "Mini":
                        Image(systemName: "magnifyingglass") // Mini
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    case "Giant":
                        Image(systemName: "scalemass") // Giant
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    case "Pocket":
                        Image(systemName: "creditcard") // Pocket
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    case "Inhabitable":
                        Image(systemName: "house") // Inhabitable
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    default:
                        Text("?")
                        
                    }
                    
                    
                    
                }
                
            case .device:
                Section {
                    
                    switch ideaAspect {
                        
                    case "Robot":
                        Image(systemName: "cpu") // Robot
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    case "Vehicle":
                        Image(systemName: "car") // vehicle
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    case "Computer":
                        Image(systemName: "macpro.gen3") // computer
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    case "Game":
                        Image(systemName: "gamecontroller") // Game
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    case "Tool":
                        Image(systemName: "hammer") // Tool
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    case "Art":
                        Image(systemName: "paintbrush") // Art
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    default:
                        Text("?")
                        
                    }
                    
                    
                }
                
            case .consumer:
                Section {
                    
                    switch ideaAspect {
                    
                    case "Family":
                        Image(systemName: "person.3.sequence") // Family
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    case "Home":
                        Image(systemName: "house") // Home
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    case "Office":
                        Image(systemName: "building.2") // Office
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    case "Industrial":
                        Image(systemName: "wrench.and.screwdriver") // Industrial
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    case "Personal":
                        Image(systemName: "person") // Personal
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    case "Public":
                        Image(systemName: "person.2.wave.2") // Public
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    default:
                        Text("?")
                    }
                    
                    
                }
                
            case .action:
                Section {
                    
                    switch ideaAspect {
                        
                    case "Flying":
                        Image(systemName: "airplane") // Flying
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    case "Random":
                        Image(systemName: "questionmark") // Random
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    case "Self-Build":
                        Image(systemName: "infinity") // Self-Build
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    case "Underwater":
                        Image(systemName: "lifepreserver") // Underwater
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    case "Stealth":
                        Image(systemName: "lightbulb.slash") // Stealth
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    case "Disposable":
                        Image(systemName: "trash") // Disposable
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    default:
                        Text("?")
                    }
                    
                    
                }
            }
            Spacer ()
            
            Text("\(ideaAspect)")
        }
                
    }
}

struct IdeaDiceView_Previews: PreviewProvider {
    static var previews: some View {
        IdeaDiceView(ideaAspect: "Electric", die: .power)
    }
}

//
//  IdeaDice.swift
//  InventionDice
//
//  Created by Dustin Olsen on 3/30/22.
//

import Foundation


class IdeaDice: ObservableObject {
    
    let materials = ["Wood", "Metal", "Plastic", "Edible", "Paper", "Organic"]
    let power = ["Manual", "Electric", "Clockwork", "Solar", "Wind", "Water"]
    let scale = ["Giant", "Mini", "Pocket", "Portable", "Wearable", "Inhabitable"]
    let device = ["Robot", "Vehicle", "Computer", "Game", "Tool", "Art"]
    let consumer = ["Family", "Personal", "Office", "Industrial", "Home", "Public"]
    let action = ["Flying", "Random", "Self-Build", "Underwater", "Stealth", "Disposable"]
    
    @Published var selectedMaterial = ""
    @Published var selectedPower = ""
    @Published var selectedScale = ""
    @Published var selectedDevice = ""
    @Published var selectedAction = ""
    @Published var selectedConsumer = ""
    
    
    
    func rollIdea() -> String {
        selectedMaterial = materials.randomElement()!
        selectedPower = power.randomElement()!
        selectedScale = scale.randomElement()!
        selectedDevice = device.randomElement()!
        selectedAction = action.randomElement()!
        selectedConsumer = consumer.randomElement()!
        
        let idea = "\(selectedMaterial) - \(selectedPower) - \(selectedScale) - \(selectedDevice) - \(selectedConsumer) -\(selectedAction)"
        
        return idea
        
    }
}

enum Die {
    case materials
    case power
    case scale
    case device
    case consumer
    case action
}
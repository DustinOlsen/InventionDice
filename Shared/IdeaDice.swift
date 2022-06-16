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
    
    func reRollDie(_ die: Die) -> String {
        
        
        
        switch die {
            
        case .materials:
            let previousRoll = selectedMaterial
            selectedMaterial = materials.randomElement()!
            
            if selectedMaterial == previousRoll {
                selectedMaterial = materials.randomElement()!
            }
            
        case .power:
            let previousRoll = selectedPower
            selectedPower = power.randomElement()!
            
            if selectedPower == previousRoll {
                selectedPower = power.randomElement()!
            }
            
        case .scale:
            let previousRoll = selectedScale
            selectedScale = scale.randomElement()!
            
            if selectedScale == previousRoll {
                selectedScale = scale.randomElement()!
            }
            
        case .device:
            let previousRoll = selectedDevice
            selectedDevice = device.randomElement()!
            
            if selectedDevice == previousRoll {
                selectedDevice = device.randomElement()!
            }
            
        case .consumer:
            let previousRoll = selectedConsumer
            selectedConsumer = consumer.randomElement()!
            
            if selectedConsumer == previousRoll {
                selectedConsumer = consumer.randomElement()!
            }
            
        case .action:
            let previousRoll = selectedAction
            selectedAction = action.randomElement()!
            
            if selectedAction == previousRoll {
                selectedAction = action.randomElement()!
            }
        
        }
        
        let idea = "\(selectedPower)-powered \(selectedMaterial) \(selectedScale) \(selectedConsumer) \(selectedAction) \(selectedDevice)"
        
        return idea
    }
    
    func rollIdea() -> String {
        selectedMaterial = materials.randomElement()!
        selectedPower = power.randomElement()!
        selectedScale = scale.randomElement()!
        selectedDevice = device.randomElement()!
        selectedAction = action.randomElement()!
        selectedConsumer = consumer.randomElement()!

        
        let idea = "\(selectedPower)-powered \(selectedMaterial) \(selectedScale) \(selectedConsumer) \(selectedAction) \(selectedDevice)"
        
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

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
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Text("\(ideaText)")
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .frame(width: 350.0, height: 250.0)
            
            Spacer()
            
            Section(header: Text("Dice")) {
                
                HStack {
                    
                    VStack {
                        
                        IdeaDiceView(ideaAspect: ideaDice.selectedPower, die: .power)
                            
                            .padding(12.0)
                            .frame(width: 115.0, height: 115.0)
                            .border(Color.primary, width: 1)
                            .onTapGesture {
                                ideaText = ideaDice.reRollDie(.power)
                            }
                        
                        IdeaDiceView(ideaAspect: ideaDice.selectedMaterial, die: .materials)
                            .padding(12.0)
                            .frame(width: 115.0, height: 115.0)
                            .border(Color.primary, width: 1)
                            .onTapGesture {
                                ideaText = ideaDice.reRollDie(.materials)
                            }
                        
                        IdeaDiceView(ideaAspect: ideaDice.selectedScale, die: .scale)
                            .padding(12.0)
                            .frame(width: 115.0, height: 115.0)
                            .border(Color.primary, width: 1)
                            .onTapGesture {
                               ideaText = ideaDice.reRollDie(.scale)
                            }
                        
                    }.padding()
                    
                    VStack {
                        
                        IdeaDiceView(ideaAspect: ideaDice.selectedConsumer, die: .consumer)
                            .padding(12.0)
                            .frame(width: 115.0, height: 115.0)
                            .border(Color.primary, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                            .onTapGesture {
                               ideaText = ideaDice.reRollDie(.consumer)
                            }
                        
                        
                        IdeaDiceView(ideaAspect: ideaDice.selectedAction, die: .action)
                            .padding(12.0)
                            .frame(width: 115.0, height: 115.0)
                            .border(Color.primary, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                            .onTapGesture {
                               ideaText = ideaDice.reRollDie(.action)
                            }
                        
                        
                        IdeaDiceView(ideaAspect: ideaDice.selectedDevice, die: .device)
                            .padding(12.0)
                            .frame(width: 115.0, height: 115.0)
                            .border(Color.primary, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                            .onTapGesture {
                               ideaText = ideaDice.reRollDie(.device)
                            }
                        
                    }.padding()
                }
            }
            
            Button("Roll") {
                ideaText = ideaDice.rollIdea()
                
            }
            .buttonStyle(.bordered)
            .padding(30)
            
            
            Spacer()
        }
    }

    

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  theme.swift
//  TESTE1
//
//  Created by Ronan Chenay on 02/08/2022.
//

import SwiftUI

struct theme: View {

@AppStorage("toggleIsOn") var isOn = false

    var body: some View {
        
                        ZStack{
            
                                Rectangle()
                                .fill(Color("theme"))
                                .frame(maxWidth: .infinity, maxHeight:  .infinity)
                                .edgesIgnoringSafeArea(.all)
            
                                VStack{
                
                                        VStack{
                                                Text("**Theme**")
                                                .font(.system(size: 20))
                                                }
                
                                                ZStack{
                                                        RoundedRectangle(cornerRadius: 20)
                                                        .stroke(self.isOn ? Color.purple: Color.blue, lineWidth: 2)
                                                        .frame(width: 250, height: 60)
                            
                                                        RoundedRectangle(cornerRadius: 20)
                                                        .fill(Color("theme"))
                                                        .frame(width: 250, height: 60)
                                                    
                                                        HStack{
                                                                Text("**Claire**")
                                                                .font(.system(size: 20))
                                                                .padding(.bottom,0)
                                
                                                                Toggle(isOn: $isOn, label: {
                                                                Text("Teste")
                                                                }).labelsHidden()
                                                                .preferredColorScheme(isOn ? .dark : .light )
                                
                                                                Text("**Sombre**")
                                                                .font(.system(size: 20))
                                                                .padding(.bottom,0)
                                
                                                                }
                            
                                                        }
                        
                        
                                        }
            
                            }
        
        
        
                }
        }

struct theme_Previews: PreviewProvider {
    static var previews: some View {
        theme()
    }
}

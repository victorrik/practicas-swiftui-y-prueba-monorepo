//
//  EjemploStates.swift
//  proyectopractica
//
//  Created by Victor Andres Marcial on 16/01/23.
//

import SwiftUI

struct EjemploStates: View {
	@State var counter : Int = 0
    var body: some View {
			VStack(spacing: 20){
				Text("Contador \(counter)")
				Button("Increment"){
					self.counter += 1
				}.foregroundColor(.blue)
			}
    }
}

struct EjemploStates_Previews: PreviewProvider {
    static var previews: some View {
        EjemploStates()
    }
}

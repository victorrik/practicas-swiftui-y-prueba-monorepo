//
//  PrimeraParte.swift
//  proyectopractica
//
//  Created by Victor Andres Marcial on 16/01/23.
//

import SwiftUI

struct PrimeraParte: View {
    var body: some View {
			NavigationView{
				ZStack {
				 VStack(alignment: .leading,spacing: 8){
							 Text("Siguiendo").font(.largeTitle).bold()
							 Text("Siguiendo").foregroundColor(.gray)
							 HStack{
								 Rectangle().foregroundColor(.blue).frame(width: 118,height: 68)
								 VStack(alignment: .leading){
									 HStack{
										 Circle()
											 .foregroundColor(.blue)
											 .frame(width: 18,height: 18)
										 Text("Username")
											 .font(.headline)
									 }
									 Text("Streaming de programacion...")
										 .foregroundColor(.gray)
									 Text("Solo hablando")
										 .foregroundColor(.gray)
								 }
							 }
						 }
						 Text("Suscribite a patitos corp")
							 .bold()
							 .font(.largeTitle)
							 .foregroundColor(.red)
							 .underline()
							 .background(Color.black)
							 .rotationEffect(.degrees(-20))
					 }
					.navigationTitle("Ejemplo de vistas")
					.navigationBarTitleDisplayMode(.inline)
				
			}
			 }

    } 

struct PrimeraParte_Previews: PreviewProvider {
    static var previews: some View {
        PrimeraParte()
    }
}

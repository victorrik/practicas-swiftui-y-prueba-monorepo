//
//  MasMasEjemplos.swift
//  proyectopractica
//
//  Created by Victor Andres Marcial on 23/01/23.
//

import SwiftUI

struct MasMasEjemplos: View {
	
	@State var showAlert:Bool = false
	@State var showActionsheet:Bool = false
	
    var body: some View {
			VStack{
				Text("Ejemplo de alert")
				Button("Presiona para alerta"){
					showAlert = true
				}
				.padding()
				.alert("Esta es una alerta",
							 isPresented: $showAlert ,
							 actions: {
					Button("Accion 1"){
						print("algo")
					}
					Button("Accion 2",role: .destructive){
						print("algo")
					}
					Button("Accion 3"){
						print("algo")
					}
					Button("Accion 4"){
						print("algo")
					}
				},
							 message: {
						Text("Este es el mensaje de la alerta")
					}
				)
				
				Text("Ejemplo de actionSheet")
				Button("Presiona para actionshee"){
					showActionsheet = true
				}
				.padding()
				.confirmationDialog("Confirmame esta",
														isPresented: $showActionsheet,
														titleVisibility: .visible,
														
														 actions: {
					Button("Boton de accion 1"){
					}
					Button("Destroy de body",role: .destructive){
					}
				}, message: {
					Text("Un mensaje para la banda?")
				})
				
				Text("Ejemplode context menu")
					.padding()
					.contextMenu(ContextMenu(menuItems: {
						Button("Meow 1"){
							
						}
						Button("Meow 2"){
							
						}
						Button(action: {
							
						}, label: {
							Label("Meow con icono", systemImage: "iphone")
						})
					}))
				
			}
    }
}

struct MasMasEjemplos_Previews: PreviewProvider {
    static var previews: some View {
        MasMasEjemplos()
    }
}

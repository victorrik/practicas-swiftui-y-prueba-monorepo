//
//  ContentView.swift
//  proyectopractica
//
//  Created by Victor Andres Marcial on 16/01/23.
//

import SwiftUI

struct MisVistas{
	
	let title: String
	let destination: AnyView
}

struct RenderLaVistas: View {
	
	let title: String
	let laVista: AnyView
	
	var body: some View {
		laVista
	}
	
}

struct ContentView: View {
	let vistas:[MisVistas] = [
		MisVistas(title:"Ejemplo vistas", destination:AnyView(PrimeraParte())),
		MisVistas(title:"Más ejemplos", destination:AnyView(MiniExtras())),
		MisVistas(title:"Ejemplo estados", destination:AnyView(EjemploStates())),
		MisVistas(title:"Ejemplos Texts fields", destination:AnyView(TextFields())),
		MisVistas(title:"Ejemplos de date picker", destination:AnyView(DatePickers())),
		MisVistas(title:"Más ejemplos practicos", destination:AnyView(MasEjemplos())),
		MisVistas(title:"Ejemplos de grid views", destination:AnyView(GridsViews())),
		MisVistas(title:"Ejemplos de form", destination:AnyView(FormView())),
		MisVistas(title:"Ejemplos de Listas(LOL)", destination:AnyView(ListViews())),
		MisVistas(title:"Ejemplo de vista Tab", destination:AnyView(TabViewExample())),
		MisVistas(title:"Ejemplo de vista Modal", destination:AnyView(ModalesView())),
		MisVistas(title:"Ejemplo de alertas", destination:AnyView(MasMasEjemplos())),
		
	]
	var body: some View {
			NavigationView{
				List{
					ForEach(vistas,id:\.title){ content in
						 
						NavigationLink(content.title, destination:RenderLaVistas(title: content.title,laVista:content.destination)
													
						)
					}
				}
				.navigationTitle("Menu de vistas uwu")
				.navigationBarTitleDisplayMode(.large)
				.navigationBarItems(trailing: Button("Done",action: {
					print("Meow")
				}))
				.navigationBarHidden(false)
			}
		}
	}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/**/

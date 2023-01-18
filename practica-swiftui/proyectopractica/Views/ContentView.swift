//
//  ContentView.swift
//  proyectopractica
//
//  Created by Victor Andres Marcial on 16/01/23.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
			NavigationView{
				List{
					NavigationLink("Ejemplo vistas", destination:
													PrimeraParte()
					)
					NavigationLink("Más ejemplos", destination:
													MiniExtras()
					)
					NavigationLink("Ejemplo estados", destination:
													EjemploStates()
					)
					NavigationLink("Ejemplos Texts fields", destination:
													TextFields()
					)
					NavigationLink("Ejemplos de date picker", destination:
													DatePickers()
					)
					NavigationLink("Más ejemplos", destination:
													MasEjemplos()
					)
					NavigationLink("Ejemplos de grid views", destination:
													GridsViews()
					)
					NavigationLink("Ejemplos de form", destination:
													FormView()
					)
					NavigationLink("Ejemplos de Listas(LOL)", destination:
													ListViews()
					)
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

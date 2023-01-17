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
					NavigationLink("Ejemplo estados", destination:
													EjemploStates()
					)
					NavigationLink("Ejemplo estados", destination:
													EjemploStates()
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

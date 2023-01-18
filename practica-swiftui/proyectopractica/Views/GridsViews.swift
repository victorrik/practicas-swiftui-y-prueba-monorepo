//
//  GridsViews.swift
//  proyectopractica
//
//  Created by Victor Andres Marcial on 17/01/23.
//

import SwiftUI

struct GridsViews: View {
    var body: some View {
			var elements = 1...500
			let gridItems = [
				GridItem(.fixed(100)),
				GridItem(.fixed(100)),
				GridItem(.fixed(100))
			]
			VStack{
				ScrollView{
					LazyVGrid(columns: gridItems, content: {
						ForEach(elements,id: \.self ){
							element in VStack{
								Circle().frame(height: 40)
								Text("\(element)")
							}
						}
					})
				}.background(Color.blue)
				ScrollView(.horizontal){
					LazyHGrid(rows: gridItems, content: {
						ForEach(elements,id: \.self ){
							element in VStack{
								Circle().frame(height: 40)
								Text("\(element)")
							}
						}
					})
				}.background(Color.red)
			}
			.padding()
    }
}

struct GridsViews_Previews: PreviewProvider {
    static var previews: some View {
        GridsViews()
    }
}

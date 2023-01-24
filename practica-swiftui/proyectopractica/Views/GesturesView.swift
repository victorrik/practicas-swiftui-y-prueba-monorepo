//
//  GesturesView.swift
//  proyectopractica
//
//  Created by Victor Andres Marcial on 23/01/23.
//

import SwiftUI

struct GesturesView: View {
	@State var taps: Int = 0
	@State var dragOffset: CGSize = .zero
    var body: some View {
				VStack{
					Text("Has tapeado \(taps)")
						RoundedRectangle(cornerRadius: 20)
						.frame(width: 100,height: 100)
						.gesture(
							TapGesture(count: 2)
								.onEnded({_ in
									print("Me has picado")
									taps += 1
								})
						)
						//Por si no quiero todo el gesture
						//.onTapGesture(count: 2){}
					RoundedRectangle(cornerRadius: 20)
						.foregroundColor(.blue)
						.frame(width: 100,height: 100)
						.offset(x:dragOffset.width,y:dragOffset.height)
						.gesture(
							DragGesture()
								.onChanged({
									value in
									print(value)
									withAnimation(.spring()){
										dragOffset = value.translation
									}
									
									
								})
							// Por si quiero que regrese o aha algo
//								.onEnded({_ in
//									dragOffset = .zero
//								})
						)
				 
				}
				
    }
}

struct GesturesView_Previews: PreviewProvider {
    static var previews: some View {
        GesturesView()
    }
}

//
//  Pickers.swift
//  proyectopractica
//
//  Created by Victor Andres Marcial on 17/01/23.
//

import SwiftUI

struct DatePickers: View {
	
	@State var fechaDatePicker : Date = Date()
	
    var body: some View {
			ScrollView{
				VStack{
					DatePicker("Selecciona una fecha", selection: $fechaDatePicker)
					
					DatePicker("Selecciona una fecha", selection: $fechaDatePicker)
					.datePickerStyle(WheelDatePickerStyle())
					
					DatePicker("", selection: $fechaDatePicker)
					.datePickerStyle(GraphicalDatePickerStyle())
					Rectangle()
						.frame(height: 5)
						.foregroundColor(.red)
					Text("Mostramos la fecha actual en adelante")
					DatePicker("Fecha",
										 selection: $fechaDatePicker,
										 in: Date()...,
										 displayedComponents: .date)
				 
				}
				.background(Color.white)
				.padding(20)
				
			}.background(Color.gray)
				
			
    }
}

struct DatePickers_Previews: PreviewProvider {
    static var previews: some View {
			DatePickers()
    }
}

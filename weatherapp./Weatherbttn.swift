//
//  Weatherbttn.swift
//  weatherapp
//
//  Created by Nefeg  on 17/2/22.
//

import SwiftUI

struct Weatherbttn :View{
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View{
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
    
}


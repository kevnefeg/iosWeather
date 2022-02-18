//
//  ContentView.swift
//  weatherapp
//
//  Created by Nefeg  on 17/2/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(topColor: isNight ? .black : .blue,
                           bottomColor: isNight ? .gray : Color("lightBlue"))
            VStack {
                cityTextView(cityName: "Santa Tecla LB")
                
                Mainweather(imageName: isNight ? "moon.stars.fill":
                                "sun.max.fill", temperature: 27)
                
                HStack(spacing:15){
                    WeatherDayView(dayofweek: "TUE",
                                   imageName: "sun.max.fill",
                                   temperature: 25)
                    
                    WeatherDayView(dayofweek: "WEB",
                                   imageName: "cloud.bolt.rain.fill",
                                   temperature: 20)
                    
                    WeatherDayView(dayofweek: "THUR",
                                   imageName: "wind",
                                   temperature: 19)
                    
                    WeatherDayView(dayofweek: "FRI",
                                   imageName: "sun.max.fill",
                                   temperature: 31)
                    
                    WeatherDayView(dayofweek: "SAT",
                                   imageName: "sun.haze.fill",
                                   temperature: 24)
            }
                Spacer()
                
                Button{
                    isNight.toggle()
                } label:{
                    Weatherbttn(title: "Change day title",
                                textColor: .blue,
                                backgroundColor: .white)
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    
    var dayofweek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(dayofweek)
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(.white)
            
            Image(systemName:imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    var topColor: Color
    var bottomColor: Color
    var body: some View {
        LinearGradient(gradient:Gradient(colors:[topColor, bottomColor]), startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct cityTextView: View{
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium , design: .default))
            .foregroundColor(.white)
            .padding()
  }
}

struct Mainweather: View{
    var imageName: String
    var temperature: Int
    
    var body: some View{
    VStack(spacing: 10) {
        Image(systemName: imageName)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 180, height: 180)
        
        Text("\(temperature)°")
            .font(.system(size: 70, weight: .medium))
            .foregroundColor(.white)
    }
    .padding(.bottom, 40)

    }
    
}


//
//  ContentView.swift
//  SwiftUIStacks
//
//  Created by Apple on 2021/10/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            
            HStack {
                PricingView(title: "PlanA", price: "$9", description: "per one", textColor: .white, bgColor: .purple, paddingValue: 40)
                
                ZStack {
                    PricingView(title: "PlanB", price: "$19", description: "per family", textColor: .black, bgColor: Color(red: 240/255, green: 240/255, blue: 240/255), paddingValue: 40)
                    
                    Text("Best for a team")
                        .font(.system(.caption, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(5)
                        .background(Color(red: 255/255, green: 183/255, blue: 37/255))
                        .offset(x: 0, y: 87)
                }
            }
            .padding(.horizontal)
            
            ZStack {
                PricingView(title: "PlanC", price: "$299", description: "perfect company", textColor: .white, bgColor: .gray, icon: "wand.and.rays", paddingValue: 20)
                    .padding()
                
                Text("Best for teams with 30 members")
                    .font(.system(.caption, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(5)
                    .background(Color(red: 255/255, green: 183/255, blue: 37/255))
                    .offset(x: 0, y: 87)
            }
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 2) {
                Text("Choose")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
                Text("Your Plan")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
            }
            Spacer()
        }
        .padding()
    }
}

struct PricingView: View {
    var title: String
    var price: String
    var description: String
    var textColor: Color
    var bgColor: Color
    var icon: String?
    var paddingValue: CGFloat
    
    var body: some View {
        VStack {
            if let icon = icon {
                Image(systemName: icon)
                    .font(.system(.largeTitle, design: .rounded))
                    .foregroundColor(textColor)
            }
            Text(title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .foregroundColor(textColor)
            Text(price)
                .font(.system(size: 40, weight: .heavy, design: .rounded))
                .foregroundColor(textColor)
            Text(description)
                .font(.headline)
                .foregroundColor(textColor)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
        .padding(paddingValue)
        .background(bgColor)
        .cornerRadius(10)
    }
}

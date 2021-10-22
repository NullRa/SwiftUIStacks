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
                VStack {
                    Text("PlanA")
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.black)
                        .foregroundColor(.white)
                    Text("$9")
                        .font(.system(size: 40, weight: .heavy, design: .rounded))
                        .foregroundColor(.white)
                    Text("per one")
                        .font(.headline)
                        .foregroundColor(.white)
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                .padding(40)
                .background(Color.purple)
                .cornerRadius(10)
                
                VStack {
                    Text("PlanB")
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.black)
                    Text("$19")
                        .font(.system(size: 40, weight: .heavy, design: .rounded))
                    Text("per family")
                        .font(.headline)
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                .padding(40)
                .background(Color(red: 240/255, green: 240/255, blue: 240/255))
                .cornerRadius(10)
            }
            .padding(.horizontal)
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
        VStack(alignment: .leading, spacing: 2) {
            Text("Choose")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
            Text("Your Plan")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
        }
    }
}

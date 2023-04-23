//
//  ContentView.swift
//  mySixthProject
//
//  Created by Badarau Dan on 21.03.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var index = 0
    @State var show = false
    
    var body: some View {
        ZStack{
            HStack{
                VStack(alignment: .leading, spacing: 12){
                    Text("Salut, ")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 10)
                    Text("Dan")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Button(action: {
                        self.index = 0
                        withAnimation{
                            self.show.toggle()
                        }
                    }) {
                        HStack(spacing: 25){
                            Image(systemName: "book.fill")
                                .foregroundColor(self.index == 0 ? Color.red : Color.white)
                            Text("Catalog")
                                .foregroundColor(self.index == 0 ? Color.red : Color.white)
                        }.padding(.vertical, 10)
                            .padding(.horizontal)
                            .background(self.index == 0 ? Color.yellow : Color.clear)
                        .cornerRadius(10)                    } .padding(.top, 25)
                    Button(action: {
                        self.index = 1
                        withAnimation{
                            self.show.toggle()
                        }
                    }) {
                        HStack(spacing: 25){
                            Image(systemName: "cart")
                                .foregroundColor(self.index == 1 ? Color.red : Color.white)
                            Text("Cos")
                                .foregroundColor(self.index == 1 ? Color.red : Color.white)
                        }.padding(.vertical, 10)
                            .padding(.horizontal)
                            .background(self.index == 1 ? Color.yellow : Color.clear)
                            .cornerRadius(10)
                    }
                    Button(action: {
                        self.index = 2
                        withAnimation{
                            self.show.toggle()
                        }
                    }) {
                        HStack(spacing: 25){
                            Image(systemName: "heart")
                                .foregroundColor(self.index == 2 ? Color.red : Color.white)
                            Text("Favorite")
                                .foregroundColor(self.index == 2 ? Color.red : Color.white)
                        }.padding(.vertical, 10)
                            .padding(.horizontal)
                            .background(self.index == 2 ? Color.yellow : Color.clear)
                            .cornerRadius(10)
                    }
                    Button(action: {
                        self.index = 3
                        withAnimation{
                            self.show.toggle()
                        }
                    }) {
                        HStack(spacing: 25){
                            Image(systemName: "doc.text.image")
                                .foregroundColor(self.index == 3 ? Color.red : Color.white)
                            Text("Comenzele mele")
                                .foregroundColor(self.index == 3 ? Color.red : Color.white)
                        }.padding(.vertical, 10)
                            .padding(.horizontal)
                            .background(self.index == 3 ? Color.yellow : Color.clear)
                            .cornerRadius(10)
                    }
                    Divider()
                        .frame(width: 150, height: 1)
                        .background(Color.white)
                        .padding(.vertical, 30)
                    
                    Button(action: {
                        //
                    }){
                        HStack{
                            Image(systemName: "door.left.hand.open")
                                .foregroundColor(.white)
                            Text("Log Out")
                                .foregroundColor(.white)
                        }.padding(.vertical, 10)
                            .padding(.horizontal)
                    }
                    Spacer(minLength: 0)
                    
                }.padding(.top, 25)
                    .padding(.horizontal, 20)
                
                Spacer(minLength: 0)
            }.padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            
            VStack(spacing: 0){
                
                HStack(spacing: 15){
                    Button(action: {
                        withAnimation{
                            self.show.toggle()
                        }
                    }){
                        Image(systemName: self.show ? "x.circle" : "line.horizontal.3")
                            .resizable()
                            .frame(width: self.show ? 18 : 22, height: 18)
                            .foregroundColor(Color.black.opacity(0.4))
                    }
                    Text(self.index == 0 ? "Catalog" : (self.index == 1 ? "Cos" : (self.index == 2 ? "Favorite" : "Comenzile mele")))
                        .font(.title)
                        .foregroundColor(Color.black.opacity(0.6))
                    Spacer(minLength: 0)
                } .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .padding()
                GeometryReader{ _ in
                    VStack{
                        if self.index == 0{
                            Catalogue()
                        }
                        else if self.index == 1 {
                            Cart()
                        }
                        else if self.index == 2 {
                            Fav()
                        }
                        else {
                            Orders()
                        }
                    }
                    
                }
            }
            .background(Color.white)
            .cornerRadius(self.show ? 30 : 0)
            .scaleEffect(self.show ? 0.9 : 1)
            .offset(x: self.show ? UIScreen.main.bounds.width / 2 : 0, y: self.show ? 15 : 0)
            .rotationEffect(.init(degrees: self.show ? -5 : 0))
            
        } .background(Color.blue.edgesIgnoringSafeArea(.all))
            .edgesIgnoringSafeArea(.all)
        
    }
}


struct Catalogue: View {
    var body: some View{
        Text("Catalog")
            .padding()
    }
}

struct Cart: View {
    var body: some View{
        Text("Cos")
            .padding()
    }
}

struct Orders: View {
    var body: some View{
        Text("Comenzile mele")
            .padding()
    }
}

struct Fav: View {
    var body: some View{
        Text("Favorite")
            .padding()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

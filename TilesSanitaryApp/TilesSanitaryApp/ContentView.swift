//
//  ContentView.swift
//  TilesSanitaryApp
//
//  Created by Unit One on 09/11/2022.
//

import SwiftUI

struct ContentView: View {
    @State var showMenu = false
    @State private var textInput: String = ""
    var body: some View {
        NavigationView{
        GeometryReader{ geometry in
        
        ZStack(alignment: .leading) {
                        
                        if self.showMenu {
                            MenuView().frame(width: geometry.size.width/2)
                        }
                    }
            
            VStack{
            
            VStack(alignment:.center){
                
                HStack {
                    Image(systemName: "lock")
                    TextField("Search", text: $textInput)
                }
                .padding(.all)
                .overlay(RoundedRectangle(cornerRadius: 7).stroke(lineWidth: 1).foregroundColor(.gray))
                
                
                HStack(){
                    Text("Categories")
                        .bold()
                    
                    Spacer()
                    
                    Text("View All")
                        .bold()
                        .font(Font.custom("", size: 14))
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        
                    
                }
                
                
                
                
                ScrollView(.horizontal) {
                                HStack(spacing: 10) {
                                    ForEach(0..<21) { index in
                                        NumberView1to20(label: "Tiles")
                                    }
                                }.padding()
                            }.frame(height: 100)
                
                
                
                
                
                
            }.padding()
            
                
                
                GeometryReader{ geo in
                    
                VStack{
                    
                    
                    Image("banner")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    
                    
                    Text("Our Brands")
                        .font(Font.custom("", size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding()
                    
                    
                    
                    VStack{
                        
                        
                        
                    }.frame(width: geo.size.width-20, height: geo.size.height)
                    .background(Color.white)
                    .cornerRadius(10)
                    
                    
                    
                    
                }.frame(width: geometry.size.width, height: geometry.size.height,alignment: .top)
                .background(Color.gray)
                    
                    
                    
                    
                
                    
                }
                
                
                
                
            }
            
            
               }.navigationBarTitle("Home", displayMode: .inline)
        .navigationBarItems(leading: (
                            Button(action: {
                                withAnimation {
                                    self.showMenu.toggle()
                                }
                            }) {
                                Image(systemName: "line.horizontal.3")
                                    .imageScale(.large)
                            }
                        ))
            
            
         }
     }
 }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct NumberView1to20: View {
    @State var label: String
     
    var body: some View {
        VStack {
            Circle()
                .fill(Color.green)
                .frame(width: 70, height: 70)
            Text(label)
                .foregroundColor(.black)
        }
    }
}

//
//  ContentView.swift
//  dropdown menu
//
//  Created by Michele Byman on 2020-12-02.
//

import SwiftUI

struct ContentView: View {
    @State var isOpen = false
    var body: some View {
        NavigationView {
    
            VStack {
      
            
                Button(action: {isOpen.toggle()}) {
                    Text("Menu")
                        .padding([.top, .leading, .bottom])
                    Image(systemName: isOpen ?  "chevron.down" :  "chevron.up")
                        .padding(.trailing)
                }
                if isOpen {
                NavigationLink(destination: Text("Item 1")) {
                    Text("Item 1").padding()
                    
                }
                NavigationLink(destination: Text("Item 2")) {
                    Text("Item 2").padding()
                }
                NavigationLink(destination: Text("Item 3")) {
                    Text("Item 3").padding()
                }
                NavigationLink(destination: Text("Item 3")) {
                    Text("Item 4").padding()
                }
                }
               
            }
            .padding()
            .background(Color(.black))
            .cornerRadius(6)
            .animation(.spring())
            
            }
           
        }
        
     
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

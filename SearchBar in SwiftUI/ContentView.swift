//
//  ContentView.swift
//  SearchBar in SwiftUI
//
//  Created by Md Khaled Hasan Manna on 25/12/19.
//  Copyright © 2019 Md Khaled Hasan Manna. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var searchText : String
    
    let arrayOfName = ["Manna","Munna","Shaon","Lalon","Limon","Rakibul","Shumon","Abid","Harun","Humaun","Liton","Milon"]
    
    
    var body: some View {
       
        VStack(spacing: 5){
            
            SearchBar(text: $searchText)
            
            List(self.arrayOfName.filter{
                self.searchText.isEmpty ? true : $0.localizedCaseInsensitiveContains(self.searchText)
            } ,id: \.self){
                Text($0)
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(searchText: "")
    }
}

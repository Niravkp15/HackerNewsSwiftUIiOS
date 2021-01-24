//
//  ContentView.swift
//  HackerNewsSwiftUI
//
//  Created by Nirav Patel on 1/24/21.
//

import SwiftUI

struct ContentView: View {
    
   @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(
                    destination: DetailView(url: post.url),
                    label: {
                        HStack {
                            Text((String(post.points)))
                            Text(post.title)
                        }
                    })
               
            }
            //NavigationView Attributes
            .navigationTitle("Hacker News")
            
        }
        
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





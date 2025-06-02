//
//  ContentView.swift
//  H4X News
//
//  Created by Varshaa vasundra sivakumar on 02/06/25.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager() //listener or subscriber
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("H4X News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

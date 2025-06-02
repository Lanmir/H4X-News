//
//  DetailView.swift
//  H4X News
//
//  Created by Varshaa vasundra sivakumar on 02/06/25.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}


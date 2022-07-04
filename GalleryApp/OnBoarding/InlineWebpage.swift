//
//  InlineWebpage.swift
//  GalleryApp
//
//  Created by Anand Narayan on 2022-07-03.
//

import SwiftUI
import WebKit

struct InlineWebpage: UIViewRepresentable {
    
    
    var url: URL
    
    func updateUIView(_ webKitView: WKWebView, context: Self.Context) {
        let fileUrl = URLRequest(url: url)
        webKitView.load(fileUrl)
    }
 
    // Create and configure the map view element.
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

}



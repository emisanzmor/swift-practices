//
//  ContentView.swift
//  WebViewApp
//
//  Created by Emi Sanzmor on 10/09/25.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> some UIView {
        let webView = WKWebView()
        webView.load(URLRequest(url: url))
        return webView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
}
struct ContentView: View {
    var body: some View {
           
            VStack {
                WebView(url: URL(string: "https://sites.google.com/tec.mx/clase100905/about")!)
                    .edgesIgnoringSafeArea(.all)
                .frame(width: 420, height: 800)        }
            .padding()
        }
    }


#Preview {
    ContentView()
}

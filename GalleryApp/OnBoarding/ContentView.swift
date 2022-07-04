//
//  ContentView.swift
//  GalleryApp
//
//  Created by Anand Narayan on 2022-07-01.
//

import SwiftUI

struct ContentView: View {
    
    // Each GridItem represents a column...so here we have 2 columns
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    @State private var openMenu = false
    @State private var openFun = false
    @State private var openAbout = false
    @State private var openLicenseAgreement = false
    var body: some View {
        GeometryReader { geo in
            ScrollView {
                // Lazy v Grid will grow vertically.
                LazyVGrid(columns: columns) {
                    ForEach(1...10, id:\.self) { i in
                        Color.orange.frame(width:geo.size.width/2, height:geo.size.height/2)
                    }
                }
                HStack {
                    VStack {
                        Text("50 Soap Bubbles").font(.title)
                        Text("See what's coming in the next update").font(.footnote)
                        Link(destination: URL(string: "https://www.instagram.com")!, label: {
                            Text("Follow me on Instagram >")
                        })
                    }
                }
            }
            NavigationLink(destination: About(), isActive: $openAbout) {
                EmptyView()
            }
            NavigationLink(destination: InlineWebpage(url: URL(string: "https://iridisfera.app/legal/ios/")!), isActive: $openLicenseAgreement) {
                EmptyView()
            }
            
        }.navigationBarHidden(true)
            .overlay(alignment: .bottomTrailing, content: {
            Button(action: {
                openMenu.toggle()
            }, label: {
                ZStack {
                    Rectangle().frame(width: 100, height: 45).cornerRadius(25)
                    Image(systemName: "capsule").font(.largeTitle).frame(width: 25).foregroundColor(Color.purple)
                    Image(systemName: "play.circle.fill").font(.title).foregroundColor(Color.purple)
                }
                
            }).padding([.trailing], 25)
            }
        /*.navigationBarItems(
        leading:
            Button (action: {
                self.openFun = true
            }, label: {
                Image(systemName: "heart").font(.title)
            }),
        trailing:
            Button(action: {
                self.openMenu = true
            }, label: {
                Image(systemName: "chevron.down").font(.title)
            })*/
        ).navigationBarTitleDisplayMode(.inline)
            .sheet(isPresented: $openMenu){
                ContentMenu(openMenu: $openMenu, openAbout: $openAbout, openLicenseAgreement: $openLicenseAgreement).background(.clear)
            }
            .sheet(isPresented: $openFun) {
                ZStack {
                    VStack {
                        Image(systemName: "heart.fill")
                    }
                }
            }
    }
}


    
    


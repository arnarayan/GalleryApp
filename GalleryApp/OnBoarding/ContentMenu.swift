//
//  ContentMenu.swift
//  GalleryApp
//
//  Created by Anand Narayan on 2022-07-02.
//

import SwiftUI

struct ContentMenu: View {
    
    @Binding var openMenu: Bool
    @Binding var openAbout: Bool
    @Binding var openLicenseAgreement: Bool
    
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Button(action: {
                    self.openAbout.toggle()
                    self.openMenu.toggle()
                    
                }, label: {
                    Text("About")
                })
                Spacer()
                Button(action: {
                    self.openMenu.toggle()
                }, label: {
                    Text("App icon")
                })
                Spacer()
                Button(action: {
                    self.openLicenseAgreement.toggle()
                    self.openMenu.toggle()
                }, label: {
                    Text("License Agreement")
                })
                Spacer()
                Link(destination: URL(string: "https://iridisfera.app/privacy/")!, label: {
                    Text("Privacy Policy")
                })
                Spacer()
                Text("App Version 1.0").font(.subheadline).padding()
            }
        }.ignoresSafeArea()
    }
}



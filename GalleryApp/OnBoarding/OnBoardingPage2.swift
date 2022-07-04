//
//  OnBoardingPage2.swift
//  GalleryApp
//
//  Created by Anand Narayan on 2022-07-01.
//

import SwiftUI

struct OnBoardingPage2: View {
    @State private var isActive = false
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        ZStack {
            //Rectangle()
            Spacer()
            VStack {
                Text("To my brother, Mihai, the protector of the unprolific.").multilineTextAlignment(.center).lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/).padding([.bottom],300)
                
                NavigationLink(isActive: $isActive, destination: {
                    ContentView()
                }) {
                    Button(action: {
                        self.isActive = true
                    }, label: {
                        Image(systemName: "chevron.right")
                            .padding(.top, 25.0)
                            .font(.largeTitle)
                            .foregroundColor(colorScheme == .light ? Color.black : Color.white)
                    })
                }
                

            }

        }.ignoresSafeArea(.all)
    }
}

struct OnBoardingPage2_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingPage2()
    }
}

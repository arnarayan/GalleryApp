//
//  OnBoardingPage1.swift
//  GalleryApp
//
//  Created by Anand Narayan on 2022-07-01.
//

import SwiftUI

struct OnBoardingPage1: View {
    
    // Binding variable to hold the state of what was clicked for activating the nav
    @State private var isActive = false
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ZStack {
                
                Spacer()
                VStack {
                    Text("Thank you for joining my soap bubbles odyssy.").multilineTextAlignment(.center).padding([.bottom],300)
                    // Nav is primed with an active flag...this way when we set the value for isActive it fires and goes
                    // to the destination
                    NavigationLink(isActive: $isActive,
                    destination: {
                        OnBoardingPage2()
                    }){
                        Button(action: {
                            // Firing this action and setting the state variable..causes the link to act.
                            self.isActive = true
                        }, label: {
                            Image(systemName: "chevron.right")
                                .padding(.top, 25.0)
                                .font(.largeTitle)
                                .foregroundColor(colorScheme == .light ? Color.black : Color.white)
                        })
                    }}

            }.ignoresSafeArea(.all)
        }
    }
}

struct OnBoardingPage1_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingPage1()
    }
}

//
//  About.swift
//  GalleryApp
//
//  Created by Anand Narayan on 2022-07-03.
//

import SwiftUI

struct About: View {
    var body: some View {
        HStack {
            VStack {
                Text("About Iridisfera").font(.largeTitle)
                Text("More blah..blah..blah!\nGreat Stuff").font(.body).foregroundColor(Color.gray)
            }
        }
    }
}

struct About_Previews: PreviewProvider {
    static var previews: some View {
        About()
    }
}

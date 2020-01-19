//
//  ContentView.swift
//  Movie Tracker
//
//  Created by Jakub Jirák on 19/01/2020.
//  Copyright © 2020 JakubJirak. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var title = ""
    @State var rating = 3.0
    @State var seen = false

    var body: some View {
        List{
            Section {
                SectionTitle(title: "Title")
                TextField("Movie Title", text: $title)
            }
            Section {
                SectionTitle(title: "Rating")
                HStack {
                    Spacer()
                    Text(String(repeating: "★", count: Int(rating))).foregroundColor(.yellow).font(.largeTitle)
                    Spacer()
                }
                Slider(value: $rating, in: 1...5, step: 1)
            }
            Section {
                SectionTitle(title: "Seen")
                Toggle(isOn: $seen) {
                    if title == "" {
                        Text("I have seen this movie")
                    } else {
                        Text("I have seen \(title)")
                    }
                }
            }
            Section {
                Button(action: {}) {
                    HStack {
                        Spacer()
                        Text("Save").font(.largeTitle)
//                        Text("Save").font(.largeTitle).padding(.all, 10).background(Color.blue).foregroundColor(.white).cornerRadius(10)
                        Spacer()
                    }
                }
            }
        }.listStyle(GroupedListStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SectionTitle: View {
    var title: String

    var body: some View {
        Text(title).font(.caption).foregroundColor(.gray)
    }
}

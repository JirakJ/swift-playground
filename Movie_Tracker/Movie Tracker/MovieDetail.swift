//
//  MovieDetail.swift
//  Movie Tracker
//
//  Created by Jakub Jirák on 19/01/2020.
//  Copyright © 2020 JakubJirak. All rights reserved.
//

import SwiftUI

struct MovieDetail: View {
    @State var movie: Movie

    var body: some View {
        List{
            Section {
                SectionTitle(title: "Title")
                TextField("Movie Title", text: $movie.title)
            }
            Section {
                SectionTitle(title: "Rating")
                HStack {
                    Spacer()
                    Text(String(repeating: "★", count: Int(movie.rating))).foregroundColor(.yellow).font(.largeTitle)
                    Spacer()
                }
                Slider(value: $movie.rating, in: 1...5, step: 1)
            }
            Section {
                SectionTitle(title: "Seen")
                Toggle(isOn: $movie.seen) {
                    if movie.title == "" {
                        Text("I have seen this movie")
                    } else {
                        Text("I have seen \(movie.title)")
                    }
                }
            }
            Section {
                Button(action: {}) {
                    HStack {
                        Spacer()
                        Text("Save").font(.largeTitle)
                        Spacer()
                    }
                }.disabled(movie.title.isEmpty)
            }
        }.listStyle(GroupedListStyle())
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: Movie())
    }
}

struct SectionTitle: View {
    var title: String

    var body: some View {
        Text(title).font(.caption).foregroundColor(.gray)
    }
}

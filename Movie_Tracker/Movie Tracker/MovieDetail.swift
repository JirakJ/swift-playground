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
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var movieStorage: MovieStorage
    let newMovie: Bool

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
                if self.newMovie {
                    Button(action: {
                        if self.newMovie {
                            //save
                            self.movieStorage.movies.append(self.movie)
                        } else {
                            //update or delete
                            for x in 0..<self.movieStorage.movies.count {
                                if self.movieStorage.movies[x].id == self.movie.id {
                                    self.movieStorage.movies[x] = self.movie
                                }
                            }
                        }
                        self.presentationMode.wrappedValue.dismiss()
                    })
                    {
                        HStack {
                            Spacer()
                            if(self.newMovie) {
                                Text("Save").font(.largeTitle)
                            } else {
                                Text("Update").font(.largeTitle)
                            }
                            Spacer()
                        }
                    }.disabled(movie.title.isEmpty)
                } else {
                    HStack{
                        Button(action: {
                            //update
                            for x in 0..<self.movieStorage.movies.count {
                                if self.movieStorage.movies[x].id == self.movie.id {
                                    self.movieStorage.movies[x] = self.movie
                                }
                            }
                            self.presentationMode.wrappedValue.dismiss()
                        })
                        {
                            HStack {
                                Spacer()
                                Text("Update").font(.largeTitle)
                                Spacer()
                            }
                        }
                        Button(action: {
                            //delete
                            for x in 0..<self.movieStorage.movies.count {
                                if self.movieStorage.movies[x].id == self.movie.id {
                                    self.movieStorage.movies.remove(at: x)
                                }
                            }
                            self.presentationMode.wrappedValue.dismiss()
                        })
                        {
                            HStack {
                                Spacer()
                                Text("Delete").font(.largeTitle).foregroundColor(.red)
                                Spacer()
                            }
                        }
                    }
                }

            }
        }.listStyle(GroupedListStyle())
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: Movie(), newMovie: true)
    }
}

struct SectionTitle: View {
    var title: String

    var body: some View {
        Text(title).font(.caption).foregroundColor(.gray)
    }
}

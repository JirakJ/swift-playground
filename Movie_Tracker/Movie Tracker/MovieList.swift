//
// Created by Jakub Jirák on 19/01/2020.
// Copyright (c) 2020 JakubJirak. All rights reserved.
//

import SwiftUI

struct MovieList: View {
    @EnvironmentObject var movieStorage: MovieStorage

    var body: some View {
        NavigationView {
            List(movieStorage.movies){
                currentMovie in
                NavigationLink(destination: MovieDetail(movie: currentMovie, newMovie: false)) {
                    Text(currentMovie.title)
                }
            }.navigationBarTitle("Movies").navigationBarItems(trailing: 
                NavigationLink(destination: MovieDetail(movie: Movie(), newMovie: true)) {
                    Image(systemName: "plus").resizable().frame(width: 25, height: 25)
                }
            )
        }

    }
}

struct MovieList_Preview: View {
    var body: some View {
        MovieList()
    }
}
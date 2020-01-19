//
// Created by Jakub Jirák on 19/01/2020.
// Copyright (c) 2020 JakubJirak. All rights reserved.
//

import SwiftUI

struct MovieList: View {
    @ObservedObject var movieStorage = MovieStorage()

    var body: some View {
        NavigationView {
            List(movieStorage.movies){
                currentMovie in
                NavigationLink(destination: MovieDetail(movie: currentMovie)) {
                    Text(currentMovie.title)
                }
            }.navigationBarTitle("Movies").navigationBarItems(trailing: 
                NavigationLink(destination: MovieDetail(movie: Movie())) {
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
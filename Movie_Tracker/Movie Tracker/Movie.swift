//
// Created by Jakub Jirák on 19/01/2020.
// Copyright (c) 2020 JakubJirak. All rights reserved.
//

import Foundation

struct Movie: Identifiable {
    var id = UUID()
    var title = ""
    var rating = 3.0
    var seen = false

    init(title: String, rating: Double, seen: Bool) {
        self.id = UUID()
        self.title = title
        self.rating = rating
        self.seen = seen
    }

    init() {
        self.id = UUID()
        self.title = ""
        self.rating = 3.0
        self.seen = false
    }
}

class MovieStorage: ObservableObject {
    @Published var movies = [Movie]()
}
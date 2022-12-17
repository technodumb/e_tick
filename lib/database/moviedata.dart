Map movieData = {
  0: {
    'name': 'Avatar 2: The Way Of Water',
    'image': getImageLocation(0),
    'description':
        '''Avatar 2 is an upcoming 2022 American epic science fiction film directed, written, produced, and co-edited by James Cameron. It is the sequel to the 2009 film Avatar and the second installment in the Avatar trilogy. The film stars Sam Worthington, Zoe Saldana, Stephen Lang, Michelle Rodriguez, Sigourney Weaver, and Oona Chaplin. It is scheduled to be released in the United States on December 16, 2022, in 3D, IMAX 3D, and 4DX.''',
    'genre': 'Action',
    'rating': 7.7,
    'releaseDate': '2022',
    'duration': '2h 40m',
    'cast': [
      'Sam Worthington',
      'Zoe Saldana',
      'Michelle Rodriguez',
      'Stephen Lang',
      'Sigourney Weaver',
      'Oona Chaplin'
    ]
  },
  1: {
    'name': 'Black Panther 2: Wakanda Forever',
    'image': getImageLocation(1),
    'description':
        '''Black Panther 2 is an upcoming American superhero film based on the Marvel Comics character Black Panther, produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures. It is intended to be the sequel to 2018's Black Panther and the 25th film in the Marvel Cinematic Universe (MCU). The film is directed by Ryan Coogler, who co-wrote the screenplay with Joe Robert Cole and will produce the film with Kevin Feige. Chadwick Boseman, Michael B. Jordan, Lupita Nyong'o, Danai Gurira, Letitia Wright, Winston Duke, Angela Bassett, Forest Whitaker, and Martin Freeman will reprise their roles from the first film, while Daniel Kaluuya, Florence Kasumba, and Sterling K. Brown will join the cast as new characters. Boseman will also appear in a cameo appearance as T'Challa.''',
    'genre': 'Action',
    'rating': 7.5,
    'releaseDate': '2022',
    'duration': '2h 30m',
    'cast': [
      'Chadwick Boseman',
      'Michael B. Jordan',
      'Lupita Nyong\'o',
      'Danai Gurira',
      'Letitia Wright',
      'Winston Duke',
      'Angela Bassett',
      'Forest Whitaker',
      'Martin Freeman',
      'Daniel Kaluuya',
      'Florence Kasumba',
      'Sterling K. Brown'
    ]
  },
  2: {
    'name': 'The Batman',
    'image': getImageLocation(2),
    'description':
        '''The Batman is an upcoming American superhero film based on the DC Comics character of the same name. Produced by DC Films and distributed by Warner Bros. Pictures, it is intended to be the fourth installment in the DC Extended Universe (DCEU). The film is directed by Matt Reeves from a screenplay he co-wrote with Mattson Tomlin, and stars Robert Pattinson as Bruce Wayne/Batman, with Zoë Kravitz, Paul Dano, Jeffrey Wright, John Turturro, Peter Sarsgaard, Jayme Lawson, and Andy Serkis in supporting roles. It is the second live-action film to feature the character after 1989's Batman, and the first since 2012's The Dark Knight Rises.''',
    'genre': 'Action',
    'rating': 7.4,
    'releaseDate': '2021',
    'duration': '2h 30m',
    'cast': [
      'Robert Pattinson',
      'Zoë Kravitz',
      'Paul Dano',
      'Jeffrey Wright',
      'John Turturro',
      'Peter Sarsgaard',
      'Jayme Lawson',
      'Andy Serkis'
    ]
  },
  3: {
    'name': 'Enola Holmes 2',
    'image': getImageLocation(3),
    'description':
        '''Enola Holmes 2 is an upcoming American mystery film directed by Harry Bradbeer and written by Jack Thorne. A sequel to the 2020 film Enola Holmes, the film stars Millie Bobby Brown, Henry Cavill, Sam Claflin, Helena Bonham Carter, Louis Partridge, Fiona Shaw, Frances de la Tour, and Adeel Akhtar. The film is scheduled to be released in the United States on September 3, 2021, by Netflix.''',
    'genre': 'Mystery',
    'rating': 7.2,
    'releaseDate': '2021',
    'duration': '2h 30m',
    'cast': [
      'Millie Bobby Brown',
      'Henry Cavill',
      'Sam Claflin',
      'Helena Bonham Carter',
      'Louis Partridge',
      'Fiona Shaw',
      'Frances de la Tour',
      'Adeel Akhtar'
    ]
  },
  4: {
    // 2022 movie
    'name': 'Top Gun: Maverick',
    'image': getImageLocation(4),
    'description':
        '''Top Gun: Maverick is an upcoming American action drama film directed by Joseph Kosinski and written by Ehren Kruger, Eric Warren Singer, and Peter Craig. A sequel to the 1986 film Top Gun, the film stars Tom Cruise, Miles Teller, Jennifer Connelly, Jon Hamm, Glen Powell, Lewis Pullman, and Val Kilmer. The film is scheduled to be released in the United States on July 2, 2021, by Paramount Pictures.''',
    'genre': 'Action',
    'rating': 8.4,
    'releaseDate': '2022',
    'duration': '2h 30m',
    'cast': [
      'Tom Cruise',
      'Miles Teller',
      'Jennifer Connelly',
      'Jon Hamm',
      'Glen Powell',
      'Lewis Pullman',
      'Val Kilmer'
    ]
  },
  5: {
    'name': 'Doctor Strange in the Multiverse of Madness',
    'image': getImageLocation(5),
    'description':
        '''Doctor Strange in the Multiverse of Madness is an upcoming American superhero film based on the Marvel Comics character Doctor Strange, produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures. It is intended to be the sequel to the 2016 film Doctor Strange and the 24th film in the Marvel Cinematic Universe (MCU). The film is directed by Sam Raimi from a screenplay by Raimi, Michael Waldron, and Jeremy Slater, and stars Benedict Cumberbatch, Elizabeth Olsen, Chiwetel Ejiofor, Rachel McAdams, Benedict Wong, and Benedict Wong. It is scheduled to be released in the United States on March 25, 2022, in 3D, IMAX 3D, and Dolby Cinema.''',
    'genre': 'Action',
    'rating': 7.8,
    'releaseDate': '2022',
    'duration': '2h 30m',
    'cast': [
      'Benedict Cumberbatch',
      'Elizabeth Olsen',
      'Chiwetel Ejiofor',
      'Rachel McAdams',
      'Benedict Wong',
    ]
  },
  6: {
    'name': 'Slumberland',
    'image': getImageLocation(6),
  },
};

String getImageLocation(int index) => 'assets/images/$index.jpg';

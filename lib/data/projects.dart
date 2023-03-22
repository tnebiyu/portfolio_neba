class Project {
  final String? name;
  final String? description;
  final String? image;
  final String? url;
  final List<String>? skills;

  Project({this.name, this.description, this.image, this.url, this.skills});
}

// ignore: non_constant_identifier_names
List<Project> PROJECTS = [
  Project(
    name: 'Campus Podcast',
    description:
        'Campus Podcast is a podcast app for students also youths in general. It is a platform that allows you to listen to podcasts and share them with your friends. It is a platform that allows you to listen to podcasts and share them with your friends.',

    image: 'images/projects/gbi.jpg',
    url: 'https://github.com/tnebiyu/gbi-podcast',
    skills: [
      'Dart',
      'Flutter',
      'Firebase',
      'Git',
    ],
  ),
  Project(
    name: 'KIT PLC',
    description: 'I built a modern official app and message app for KENERA INTERNATIONAL TRADING PLC which allow the employers to communicate with their employees and send them notifications and messages. also clients can see the products and services of the company and can contact the company through the app.',
    image: 'images/projects/kenera.jpg',
    url: 'https://github.com/tnebiyu/kenera-plc',
    skills: [
      'Dart',
      'Flutter',
      'Firebase',
      'Git',
    ],
  ),
  Project(
    name: 'Movie App',
    description:
        'Movie App is a movie app that allows you to search for movies and get information about them. I used the TMDB API to get the data.',
    image: 'images/projects/gbi.jpg',
    url: 'https://github.com/tnebiyu/ariob_movies',
    skills: [
      'Dart',
      'Flutter',
      'Firebase',
      'Git',
    ],
  ),
];

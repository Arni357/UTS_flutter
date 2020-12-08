import 'model/user.dart';

final users = <User>[
  User(
    name: 'Keisha Azzahra',
    bio:
        'Psikologi, ilmu, dan seni adalah apa yang membantu saya mempelajari dunia luar dan diri saya sendiri.',
    countFollowers: 1400,
    countFollowing: 100,
    location: 'Bandung, Jawa Barat',
    isFollowing: true,
    countPosts: 35,
    urlImage: 'assets/user8.jpg',
    urlPhotos: [
      'assets/photo4.jpg',
      'assets/photo5.jpg',
      'assets/photo6.jpg',
    ],
  ),
  User(
    name: 'Alfi Suciani',
    bio: 'Jalan-jalan, olahraga, membaca buku adalah hal yang saya senangi',
    countFollowers: 1800,
    countFollowing: 510,
    location: 'Pekalongan, Jawa Tengah',
    isFollowing: false,
    countPosts: 118,
    urlImage: 'assets/user6.jpg',
    urlPhotos: [
      'assets/photo7.jpg',
      'assets/photo8.jpg',
    ],
  ),
  User(
    name: 'Diana Dwi Putri',
    bio:
        'Psikologi, ilmu, dan seni adalah apa yang membantu saya mempelajari dunia luar dan diri saya sendiri.',
    countFollowers: 43,
    countFollowing: 78,
    location: 'Kediri, Jawa Timur',
    isFollowing: false,
    countPosts: 410,
    urlImage: 'assets/user7.jpg',
    urlPhotos: [
      'assets/photo9.jpg',
      'assets/photo10.jpg',
      'assets/photo11.jpg',
      'assets/photo8.jpg',
    ],
  )
];

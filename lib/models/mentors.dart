class Mentors {
  String title;
  String subtitle;
  String price;
  String imageUrl;
  List<String> detailUrl;
  Mentors(this.title, this.subtitle, this.price, this.imageUrl, this.detailUrl);
  static List<Mentors> generateMentors() {
    return [
      Mentors(
       'Jaylon Vaccaro',
       'Psychology', 
       '\$25/1hr',
       'assets/images/arrival1.png', 
       ['assets/images/arrival1.png', 'assets/images/detail2']),
      Mentors(
        'Wilson Vetrovs', 
        'Meditation',
        '\$25/1hr',
        'assets/images/arrival2.png',
        ['assets/images/arrival2.png', 'assets/images/detail3']),



    ];
  }
}

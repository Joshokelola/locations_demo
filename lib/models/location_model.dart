class Locations {
  String label;
  String imageUrl;

  Locations(this.label, this.imageUrl);

  static List<Locations> places = [
    Locations('France', 'assets/France.jpg'),
    Locations('Holland', 'assets/holland.jpg'),
    Locations('New York', 'assets/newYork.jpg'),
    Locations('Nigeria', 'assets/Nigeria.jpg'),
    Locations('Cape Town', 'assets/CapeTown.jpg'),
  ];
}

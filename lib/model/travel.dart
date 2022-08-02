class Travel {
  String name;
  String img;
  String address;

  Travel(this.name, this.address, this.img);

  static List<Travel> generatedTravelList() {
    return [
      Travel("Patenga Beach", "Chittagang", "images/img-patenga.jpg"),
      Travel("Jaflong", "Sylhet", "images/img-jaflong.jpg"),
      Travel("Alu Tila", "Bandarban", "images/img-alutila.jpg"),
      Travel("Saint Martin", "Chittagang", "images/img-saintmartin.jpg"),
    ];
  }
}

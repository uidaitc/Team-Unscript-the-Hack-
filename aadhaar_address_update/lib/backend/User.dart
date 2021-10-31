//define class to store aadhar, name, etc details
class User {
  final String? phNo;
  final String? name;
  final String? dob;
  final String? gender;
  final String? photo;
  String? address;
  User({this.name, this.phNo, this.dob, this.gender, this.photo, this.address});

  Map sendData() {
    Map data = {
      'name': this.name,
      'phone': this.phNo,
      'dob': this.dob,
      'gender': this.gender,
      'address': this.address,
      'photo': this.photo
    };
    return data;
  }

  void changeAddress(String newAddress) {
    this.address = newAddress;
  }

  void getData(){
    
  }
}

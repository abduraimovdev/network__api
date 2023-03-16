
class Coordinates {
  double lat;
  double lng;
  Coordinates(this.lat, this.lng);
  factory Coordinates.fromJson(Map<String, dynamic> json) {
    double lat = json['lat'];
    double lng = json['lng'];
    return Coordinates(lat, lng);
  }
  @override
  String toString() {
    return 'Coordinates{lat: $lat, lng: $lng}';
  }
}

class Address {
  String address;
  String city;
  Coordinates coordinates;
  String postalCode;
  String state;

  Address(
      this.address, this.city, this.coordinates, this.postalCode, this.state);

  factory Address.fromJson(Map<String, dynamic> json) {
    String address = json['address'];
    String city = json['city'];
    Coordinates coordinates = Coordinates.fromJson(json['coordinates']);
    String postalCode = json['postalCode'];
    String state = json['state'];

    return Address(address, city, coordinates, postalCode, state);
  }
  @override
  String toString() {
    return 'Address{address: $address, city: $city, coordinates: $coordinates, postalCode: $postalCode, state: $state}';
  }
}

class Company {
  Address address;
  String department;
  String name;
  String title;

  Company(this.address, this.department, this.name, this.title);

  factory Company.fromJson(Map<String, dynamic> json) {
    Address address = Address.fromJson(json['address']);
    String department = json['department'];
    String name = json['name'];
    String title = json['title'];

    return Company(address, department, name, title);
  }

  @override
  String toString() {
    return 'Company{address: $address, department: $department, name: $name, title: $title}';
  }
}

class Bank {
  String cardExpire;
  String cardNumber;
  String cardType;
  String currency;
  String iban;

  Bank(this.cardExpire, this.cardNumber, this.cardType, this.currency,
      this.iban);

  factory Bank.fromJson(Map<String, dynamic> json) {
    String cardExpire = json['cardExpire'];
    String cardNumber = json['cardNumber'];
    String cardType = json['cardType'];
    String currency = json['currency'];
    String iban = json['iban'];

    return Bank(cardExpire, cardNumber, cardType, currency, iban);
  }
}

class Hair {
  String color;
  String type;
  Hair(this.color, this.type);

  factory Hair.fromJson(Map<String, dynamic> json) {
    String color = json['color'];
    String type = json['type'];

    return Hair(color, type);
  }

  @override
  String toString() {
    return 'Hair{color: $color, type: $type}';
  }
}

class Users {
  int id;
  String firstName;
  String lastName;
  String maidenName;
  int age;
  String gender;
  String email;
  String phone;
  String username;
  String password;
  String birthDate;
  String image;
  String bloodGroup;
  int height;
  double weight;
  String eyeColor;
  Hair hair;
  String domain;
  String ip;
  Address address;
  String macAddress;
  String university;
  Bank bank;
  Company company;
  String ein;
  String ssn;
  String userAgent;

  Users(
      this.id,
      this.firstName,
      this.lastName,
      this.maidenName,
      this.age,
      this.gender,
      this.email,
      this.phone,
      this.username,
      this.password,
      this.birthDate,
      this.image,
      this.bloodGroup,
      this.height,
      this.weight,
      this.eyeColor,
      this.hair,
      this.domain,
      this.ip,
      this.address,
      this.macAddress,
      this.university,
      this.bank,
      this.company,
      this.ein,
      this.ssn,
      this.userAgent);

  factory Users.fromJson(Map<String, dynamic> json) {
    int id = json['id'];
    String firstName = json['firstName'];
    String lastName = json['lastName'];
    String maidenName = json['maidenName'];
    int age = json['age'];
    String gender = json['gender'];
    String email = json['email'];
    String phone = json['phone'];
    String username = json['username'];
    String password = json['password'];
    String birthDate = json['birthData'];
    String image = json['image'];
    String bloodGroup = json['bloodGroup'];
    int height = json['height'];
    double weight = json['weight'];
    String eyeColor = json['eyeColor'];
    Hair hair = Hair.fromJson(json['hair']);
    String domain = json['domain'];
    String ip = json['id'];
    Address address = Address.fromJson(json['address']);
    String macAddress = json['macAddress'];
    String university = json['university'];
    Bank bank = Bank.fromJson(json['bank']);
    Company company = Company.fromJson(json['company']);
    String ein = json['ein'];
    String ssn = json['ssn'];
    String userAgent = json['userAgent'];

    return Users(
        id,
        firstName,
        lastName,
        maidenName,
        age,
        gender,
        email,
        phone,
        username,
        password,
        birthDate,
        image,
        bloodGroup,
        height,
        weight,
        eyeColor,
        hair,
        domain,
        ip,
        address,
        macAddress,
        university,
        bank,
        company,
        ein,
        ssn,
        userAgent);
  }

  @override
  String toString() {
    return 'Users{id: $id, firstName: $firstName, lastName: $lastName, maidenName: $maidenName, age: $age, gender: $gender, email: $email, phone: $phone, username: $username, password: $password, birthDate: $birthDate, image: $image, bloodGroup: $bloodGroup, height: $height, weight: $weight, eyeColor: $eyeColor, hair: $hair, domain: $domain, ip: $ip, address: $address, macAddress: $macAddress, university: $university, bank: $bank, company: $company, ein: $ein, ssn: $ssn, userAgent: $userAgent}';
  }
}

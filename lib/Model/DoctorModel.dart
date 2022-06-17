class Doctor {
  late String name;
  late double id;
  late double? rate;
  late String specialize;
  late Schedule schedule;
  late double price;
  late String photo;
  List<Reservation> reservations = [];

  Doctor.fromJson(Map data) {
    this.name = data['name'];
    this.id = data['id'];
    this.rate = data['rate'];
    this.specialize = data['specialize'];
    this.schedule = data['schedule'].isEmpty
        ? Schedule.fromJson({})
        : Schedule.fromJson(data['schedule'][0]);
    this.price = data['price'];
    this.photo = data['photo'];
    data['reservation'].forEach((i) {
      this.reservations.add(Reservation.fromJson(i));
    });
  }
}

class Schedule {
  List<String> sat_time = [];
  List<String> sun_time = [];
  List<String> mon_time = [];
  List<String> tue_time = [];
  List<String> wed_time = [];
  List<String> fri_time = [];
  List<String> thu_time = [];

  Schedule.fromJson(Map data) {
    if (data.isNotEmpty) {
      this.sat_time = splitTime(data['sat_time']);
      this.sun_time = splitTime(data['sun_time']);
      this.mon_time = splitTime(data['mon_time']);
      this.tue_time = splitTime(data['tue_time']);
      this.wed_time = splitTime(data['wed_time']);
      this.fri_time = splitTime(data['fri_time']);
      this.thu_time = splitTime(data['thu_time']);
    }
  }

  List<String> splitTime(String? time) {
    return time == null ? [] : time.split(' ');
  }
}

class Reservation {
  late double id;
  late double reserved_by;
  late double price;
  late String reservation_date;
  late String reservation_time;
  late String type;
  late String status;
  late double? rate;
  late String payment_method;
  late String payment_status;

  Reservation.fromJson(Map data) {
    this.id = data['id'];
    this.reserved_by = data['reserved_by'];
    this.price = data['price'];
    this.reservation_date = data['reservation_date'];
    this.reservation_time = data['reservation_time'];
    this.type = data['type'];
    this.status = data['status'];
    this.rate = data['rate'];

    this.payment_method = data['payment_method'];
    this.payment_status = data['payment_status'];
  }
}

class CepModel {
  String? _cep;
  String? _addressType;
  String? _addressName;
  String? _address;
  String? _state;
  String? _district;
  String? _lat;
  String? _lng;
  String? _city;
  String? _cityIbge;
  String? _ddd;

  CepModel(
      {String? cep,
      String? addressType,
      String? addressName,
      String? address,
      String? state,
      String? district,
      String? lat,
      String? lng,
      String? city,
      String? cityIbge,
      String? ddd}) {
    if (cep != null) {
      _cep = cep;
    }
    if (addressType != null) {
      _addressType = addressType;
    }
    if (addressName != null) {
      _addressName = addressName;
    }
    if (address != null) {
      _address = address;
    }
    if (state != null) {
      _state = state;
    }
    if (district != null) {
      _district = district;
    }
    if (lat != null) {
      _lat = lat;
    }
    if (lng != null) {
      _lng = lng;
    }
    if (city != null) {
      _city = city;
    }
    if (cityIbge != null) {
      _cityIbge = cityIbge;
    }
    if (ddd != null) {
      _ddd = ddd;
    }
  }

  String? get cep => _cep;
  set cep(String? cep) => _cep = cep;
  String? get addressType => _addressType;
  set addressType(String? addressType) => _addressType = addressType;
  String? get addressName => _addressName;
  set addressName(String? addressName) => _addressName = addressName;
  String? get address => _address;
  set address(String? address) => _address = address;
  String? get state => _state;
  set state(String? state) => _state = state;
  String? get district => _district;
  set district(String? district) => _district = district;
  String? get lat => _lat;
  set lat(String? lat) => _lat = lat;
  String? get lng => _lng;
  set lng(String? lng) => _lng = lng;
  String? get city => _city;
  set city(String? city) => _city = city;
  String? get cityIbge => _cityIbge;
  set cityIbge(String? cityIbge) => _cityIbge = cityIbge;
  String? get ddd => _ddd;
  set ddd(String? ddd) => _ddd = ddd;

  CepModel.fromJson(Map<String, dynamic> json) {
    _cep = json['cep'];
    _addressType = json['address_type'];
    _addressName = json['address_name'];
    _address = json['address'];
    _state = json['state'];
    _district = json['district'];
    _lat = json['lat'];
    _lng = json['lng'];
    _city = json['city'];
    _cityIbge = json['city_ibge'];
    _ddd = json['ddd'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cep'] = _cep;
    data['address_type'] = _addressType;
    data['address_name'] = _addressName;
    data['address'] = _address;
    data['state'] = _state;
    data['district'] = _district;
    data['lat'] = _lat;
    data['lng'] = _lng;
    data['city'] = _city;
    data['city_ibge'] = _cityIbge;
    data['ddd'] = _ddd;
    return data;
  }
}

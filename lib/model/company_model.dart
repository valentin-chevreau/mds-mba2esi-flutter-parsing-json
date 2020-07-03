class CompanyModel {
  String name;
  String catchPhrase;
  String bs;

  CompanyModel(this.name, this.catchPhrase, this.bs);

  factory CompanyModel.fromJson(Map<String, dynamic> json) {
    return CompanyModel(json['name'], json['catchPhrase'], json['bs']);
  }

  @override
  String toString() {
    return 'CompanyModel{name: $name, catchPhrase: $catchPhrase, bs: $bs}';
  }
}

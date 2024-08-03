import 'dart:convert';

class ClientModel{

  final String id;
  final String name;
  final String email;
  final String phone;
  final String? address;

  ClientModel({required this.id, required this.name, required this.email, this.address, required this.phone});

  factory ClientModel.fromJson(Map <String, dynamic> json){
    return ClientModel(
    id: json['id'],
    name: json['name'],
    email: json['email'],
    phone: json['phone'],
    address: json['address']
    );
  }

  Map<String, dynamic> toJson(){
    return{
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'address': address
    };
  }
}
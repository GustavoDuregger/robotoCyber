import 'dart:convert';

class RoboDroneModel {
  int id;
  String nome;
  String vidaUtil;
  String estado;
  String comportamento1;
  String comportamento2;
  String comportamento3;
  String sistemaOperacional;
  int quantidade;

  RoboDroneModel({
    this.id,
    this.nome,
    this.vidaUtil,
    this.estado,
    this.comportamento1,
    this.comportamento2,
    this.comportamento3,
    this.sistemaOperacional,
    this.quantidade
  });

  factory RoboDroneModel.fromJson(String str) =>
      RoboDroneModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory RoboDroneModel.fromMap(Map<String, dynamic> json) => RoboDroneModel(
        id: 
          (json["id"] is int)  ? 
            json["id"] : 
            int.parse(json["id"]) ,
        nome: json["nome"],
        vidaUtil: json["vidaUtil"],
        estado: json["estado"],
        comportamento1: json["comportamento1"],
        comportamento2: json["comportamento2"],
        comportamento3: json["comportamento3"],
        sistemaOperacional: json["sistemaOperacional"],
        quantidade: (json["quantidade"] is int) ? json["quantidade"] : 
            int.parse(json["quantidade"]) ,
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "nome": nome,
        "vidaUtil": vidaUtil,
        "estado": estado,
        "comportamento1": comportamento1,
        "comportamento2": comportamento2,
        "comportamento3": comportamento3,
        "sistemaOperacional": sistemaOperacional,
        "quantidade": quantidade
      };
}
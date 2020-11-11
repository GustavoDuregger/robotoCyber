import 'package:dio/dio.dart';
import 'package:roboto/models/robo_artificial_model.dart';
import 'package:roboto/models/robo_drone_model.dart';
import 'package:roboto/models/robo_terrestre_model.dart';
import 'package:roboto/services/service_config.dart';

class RoboDroneService {
  //LINK DA API
  static final String _endpoint =
      "https://5fab35bddbbef70016d4830f.mockapi.io/";
  //ENDPOINT
  static final String _resource = 'robodrone';

  final ServiceConfig service = new ServiceConfig(_endpoint);

  Future<List<RoboDroneModel>> findAll() async {
    List<RoboDroneModel> lista = new List<RoboDroneModel>();

    try {
      Response response = await service.create().get(_resource);
      if (response.statusCode == 200) {
        response.data.forEach(
          (value) {
            print(value);
            lista.add(
              RoboDroneModel.fromMap(value),
            );
          },
        );
      }
    } catch (error) {
      print("Service Error: $error ");
      throw error;
    }

    return lista;
  }
 

  //MODELO DE CRUD DE TODOS OS SERVIÇOS
  Future<int> create(RoboDroneModel roboDroneModel) async {
    try {
      roboDroneModel.id = 0;
      Response response = await service.create().post(
            _resource,
            data: roboDroneModel.toMap(),
          );

      if (response.statusCode == 201) {
        var retorno = (response.data["id"] is String)
            ? int.parse(response.data["id"])
            : response.data["id"];
        return retorno;
      }
    } catch (error) {
      print("Service Error: $error ");
      throw error;
    }
  }

  Future<RoboDroneModel> getById(int id) async {
    try {
      String endpoint = _resource + "/" + id.toString();
      Response response = await service.create().get(endpoint);

      if (response.statusCode == 200) {
        var retorno = RoboDroneModel.fromMap(response.data);
        return retorno;
      }
    } catch (error) {
      print("Service Error: $error ");
      throw error;
    }
  }

  Future<int> update(RoboDroneModel roboDroneModel) async {
    try {
      String endpoint = _resource + "/" + roboDroneModel.id.toString();

      Response response = await service.create().put(
            endpoint,
            data: roboDroneModel.toMap(),
          );

      var retorno = (response.data["id"] is String)
          ? int.parse(response.data["id"])
          : response.data["id"];
      return retorno;
    } catch (error) {
      print("Service Error: $error ");
      throw error;
    }
  }

  Future<void> delete(RoboDroneModel roboDroneModel) async {
    try {
      String endpoint = _resource + "/" + roboDroneModel.id.toString();

      Response response = await service.create().delete(
            endpoint,
          );

      if (response.statusCode != 200) {
        throw Exception("Não foi possível excluir o recurso!");
      }
    } catch (error) {
      throw error;
    }
  }
}

class RoboTerrestreService {
  //LINK DA API
  static final String _endpoint =
      "https://5fab35bddbbef70016d4830f.mockapi.io/";
  //ENDPOINT
  static final String _resource = 'roboArtificial';

  final ServiceConfig service = new ServiceConfig(_endpoint);

  Future<List<RoboTerrestreModel>> findAll() async {
    List<RoboTerrestreModel> lista = new List<RoboTerrestreModel>();

    try {
      Response response = await service.create().get(_resource);
      if (response.statusCode == 200) {
        response.data.forEach(
          (value) {
            print(value);
            lista.add(
              RoboTerrestreModel.fromMap(value),
            );
          },
        );
      }
    } catch (error) {
      print("Service Error: $error ");
      throw error;
    }

    return lista;
  }
 

  //MODELO DE CRUD DE TODOS OS SERVIÇOS
  Future<int> create(RoboTerrestreModel roboTerrestreModel) async {
    try {
      roboTerrestreModel.id = 0;
      Response response = await service.create().post(
            _resource,
            data: roboTerrestreModel.toMap(),
          );

      if (response.statusCode == 201) {
        var retorno = (response.data["id"] is String)
            ? int.parse(response.data["id"])
            : response.data["id"];
        return retorno;
      }
    } catch (error) {
      print("Service Error: $error ");
      throw error;
    }
  }

  Future<RoboTerrestreModel> getById(int id) async {
    try {
      String endpoint = _resource + "/" + id.toString();
      Response response = await service.create().get(endpoint);

      if (response.statusCode == 200) {
        var retorno = RoboTerrestreModel.fromMap(response.data);
        return retorno;
      }
    } catch (error) {
      print("Service Error: $error ");
      throw error;
    }
  }

  Future<int> update(RoboTerrestreModel roboTerrestreModel) async {
    try {
      String endpoint = _resource + "/" + roboTerrestreModel.id.toString();

      Response response = await service.create().put(
            endpoint,
            data: roboTerrestreModel.toMap(),
          );

      var retorno = (response.data["id"] is String)
          ? int.parse(response.data["id"])
          : response.data["id"];
      return retorno;
    } catch (error) {
      print("Service Error: $error ");
      throw error;
    }
  }

  Future<void> delete(RoboTerrestreModel roboTerrestreModel) async {
    try {
      String endpoint = _resource + "/" + roboTerrestreModel.id.toString();

      Response response = await service.create().delete(
            endpoint,
          );

      if (response.statusCode != 200) {
        throw Exception("Não foi possível excluir o recurso!");
      }
    } catch (error) {
      throw error;
    }
  }
}

class RoboArtificialService {
  //LINK DA API
  static final String _endpoint =
      "https://5fab35bddbbef70016d4830f.mockapi.io/";
  //ENDPOINT
  static final String _resource = 'roboartificial';

  final ServiceConfig service = new ServiceConfig(_endpoint);

  Future<List<RoboArtificialModel>> findAll() async {
    List<RoboArtificialModel> lista = new List<RoboArtificialModel>();

    try {
      Response response = await service.create().get(_resource);
      if (response.statusCode == 200) {
        response.data.forEach(
          (value) {
            print(value);
            lista.add(
              RoboArtificialModel.fromMap(value),
            );
          },
        );
      }
    } catch (error) {
      print("Service Error: $error ");
      throw error;
    }

    return lista;
  }
 

  //MODELO DE CRUD DE TODOS OS SERVIÇOS
  Future<int> create(RoboArtificialModel roboArtificialModel) async {
    try {
      roboArtificialModel.id = 0;
      Response response = await service.create().post(
            _resource,
            data: roboArtificialModel.toMap(),
          );

      if (response.statusCode == 201) {
        var retorno = (response.data["id"] is String)
            ? int.parse(response.data["id"])
            : response.data["id"];
        return retorno;
      }
    } catch (error) {
      print("Service Error: $error ");
      throw error;
    }
  }

  Future<RoboArtificialModel> getById(int id) async {
    try {
      String endpoint = _resource + "/" + id.toString();
      Response response = await service.create().get(endpoint);

      if (response.statusCode == 200) {
        var retorno = RoboArtificialModel.fromMap(response.data);
        return retorno;
      }
    } catch (error) {
      print("Service Error: $error ");
      throw error;
    }
  }

  Future<int> update(RoboArtificialModel roboArtificialModel) async {
    try {
      String endpoint = _resource + "/" + roboArtificialModel.id.toString();

      Response response = await service.create().put(
            endpoint,
            data: roboArtificialModel.toMap(),
          );

      var retorno = (response.data["id"] is String)
          ? int.parse(response.data["id"])
          : response.data["id"];
      return retorno;
    } catch (error) {
      print("Service Error: $error ");
      throw error;
    }
  }

  Future<void> delete(RoboArtificialModel roboArtificialModel) async {
    try {
      String endpoint = _resource + "/" + roboArtificialModel.id.toString();

      Response response = await service.create().delete(
            endpoint,
          );

      if (response.statusCode != 200) {
        throw Exception("Não foi possível excluir o recurso!");
      }
    } catch (error) {
      throw error;
    }
  }
}

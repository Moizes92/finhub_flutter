import 'dart:convert';
import 'dart:io';
import 'package:charitech/models/organization_model.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class CHARITECAPIService {
  CHARITECAPIService._instantiate();

  static final CHARITECAPIService instance = CHARITECAPIService._instantiate();
  final String BaseURL = '10.0.2.2:8000';

  Future<List<Organization>> fetchOrganizations() async {
    Map<String, dynamic> parameters = {};
    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json'
    };
    Uri uri = Uri.http(BaseURL, 'api/v1/organizations/', parameters);
    Response response = await http.get(uri, headers: headers);
    if (response.statusCode == 200) {
      var results = json.decode(response.body);
      List<Organization> organizations = [];
      results.forEach((json) => organizations.add(Organization.fromJson(json)));
      return organizations;
    } else {
      throw 'Error while fetching organizations';
    }
  }
}

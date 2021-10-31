//call all apis here
import 'dart:convert' as convert;
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:uuid/uuid.dart';

// geocode API key
//String ApiKey = 'AIzaSyA2XuQ88rK5EZNLbjm_oL0qP0Jb6N7uZA0';

// class Apis {
//   static Future<dynamic> getRequest(String url) async {
//     var uri = Uri.parse(url);
//     http.Response response = await http.get(uri);

//     try {
//       if (response.statusCode == 200) {
//         String jsonData = response.body;
//         var decodedData = jsonDecode(jsonData);
//         return decodedData;
//       } else {
//         return 'Failed';
//       }
//     } catch (exp) {
//       return "Failed";
//     }
//   }

//   static Future<String> getLatLong() async {
//     String address = '';
//     var url =
//         'https://api.geoapify.com/v1/geocode/autocomplete?text=$search%20$type%20$city&apiKey=$key&filter=';
//     var response = await http.get(url);
//     var json = convert.jsonDecode(response.body);
//     var jsonResult = json['features'];
//     List searchDetails = [];
//     for (var i = 0; i < 5; i++) {
//       var name = jsonResult[i]['properties']['name'];
//       var placeId = jsonResult[i]['properties']['place_id'];
//       var lat = jsonResult[i]['properties']['lat'];
//       var lon = jsonResult[i]['properties']['lon'];
//       Map value = {'name': '$name', 'lat': '$lat', 'lon': '$lon'};
//       searchDetails.add(value);
//     }

//     return searchDetails;
//   }
// }

class PlacesService {
  final key = '68eefee6ce5e41f8925b05338f91f69e';
  Future<List> getAutocomplete(String search) async {
    String url =
        'https://api.geoapify.com/v1/geocode/autocomplete?text=$search&apiKey=$key';
    var uri = Uri.parse(url);
    var response = await http.get(uri);
    var json = convert.jsonDecode(response.body);
    var jsonResult = json['features'];
    List searchDetails = [];
    for (var i = 0; i < 5; i++) {
      // var name = jsonResult[i]['properties']['name'];
      // var placeId = jsonResult[i]['properties']['place_id'];
      var lat = jsonResult[i]['properties']['lat'];
      var lon = jsonResult[i]['properties']['lon'];
      Map value = {'lat': '$lat', 'lon': '$lon'};
      searchDetails.add(value);
    }
    return searchDetails;
  }

  Map generateOTP() {
    return {};
  }
}

class ValidateOTP {

  var uuid = Uuid();
  static var txnId = "";
  
  Future<void> sendOTP(String uid) async{
    txnId = uuid.v4();
    Map body = {'uid':uid,'txnId':txnId};
    var response = await http.post(Uri.parse("https://stage1.uidai.gov.in/onlineekyc/getOtp/"),body: jsonEncode(body),headers:{ "Content-Type": "application/json" });
    try{
      if(response.statusCode == 200){
          print(response.body);
      }else{
        print("Invalid Request!");
      }
    }catch(error){
      print(error);
    }

  }

  Future<void> eKYC(String uid,String otp) async{
    var response = await http.post(Uri.parse("https://stage1.uidai.gov.in/onlineekyc/getEkyc/"),body: ({'uid':uid,'txnId':txnId,'otp':otp}));
    try{
      if(response.statusCode == 200){
          print(response.body);
      }else{
        print("Invalid Request!");
      }
    }catch(error){
      print(error);
    }

  }
}

import 'package:countries/models/country_model.dart';
import 'package:countries/presentations/entities/message.dart';
import 'package:dio/dio.dart';

class CountryAnswer {
  final _dio = Dio();

  Future<Message> getAnswer(String name) async
  {
    final response = await _dio.get('https://restcountries.com/v3.1/name/$name&');

    if(response.statusCode == 200)
    {
      return CountryModel.fromJsonMap(response.data[0]).toEntity();
    }
    throw UnimplementedError();
  }
}
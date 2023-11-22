import 'package:dio/dio.dart';
import 'package:webant_project/data/models/photo_model.dart';

class RepositoryPhoto {
  Future<PhotosModel?> getPhoto({required int limit, required bool popular}) async {
    PhotosModel? model;
    final options = BaseOptions(
      baseUrl: 'https://gallery.prod1.webant.ru/api',
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
    );
    final dio = Dio();
    try {
      if (popular == false) {
        final response = await dio.get('${options.baseUrl}/photos?new=true&popular=false&limit=$limit');
        model = PhotosModel.fromJson(response.data);
      } else if (popular == true) {
        final response = await dio.get('${options.baseUrl}/photos?new=false&popular=true&limit=$limit');
        model = PhotosModel.fromJson(response.data);
      }
    } on DioException catch (e) {
      {
        if (e.type == DioExceptionType.connectionError || e.type == DioExceptionType.connectionTimeout) {
          return null;
        }
        if (e.response != null) {
          // print('Dio error!');
          // print('STATUS: ${e.response?.statusCode}');
          // print('DATA: ${e.response?.data}');
          // print('HEADERS: ${e.response?.headers}');
          return null;
        } else {
          // print('Error sending request!');
          // print(e.message);
          return null;
        }
      }
    }
    return model;
  }
}

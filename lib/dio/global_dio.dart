import 'package:dio/dio.dart';

import 'dio_helper.dart';

final Dio dio =
    DioHelper.getDio(baseUrl: "https://dev-lm.coderslab.com.bd/api/v1/");

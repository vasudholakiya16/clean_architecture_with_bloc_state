import 'package:clean_architecture_with_bloc_state/config/routes/api_url.dart';
import 'package:clean_architecture_with_bloc_state/data/network/network_services_api.dart';
import 'package:clean_architecture_with_bloc_state/model/user/user_model.dart';

class LoginRepository {
  final _api = NetworkServicesApi();
  Future<UserModel> loginApi(dynamic data) async {
    final response = await _api.postApi(AppUrl.baseUrl, data);

    return UserModel.fromJson(response);
  }
}

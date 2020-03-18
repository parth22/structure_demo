import 'package:rxdart/rxdart.dart';
import 'package:structure_demo/resource/dashboard_api_provider.dart';

class CityBloc extends Object {
  final PublishSubject<dynamic> cityData = PublishSubject<dynamic>();

  Observable<dynamic> get getUserData => cityData.stream;

  dynamic cityList() async {
    final dynamic cityDatas = await cityRequest();
    cityData.sink.add(cityDatas.data);
  }

  void dispose() {
    cityData.close();
  }
}

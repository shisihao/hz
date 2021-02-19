import '../util/request.dart';

_handleGetHome() {
  var result = HttpUtils.request('/home', method: HttpUtils.GET);
  return result;
}
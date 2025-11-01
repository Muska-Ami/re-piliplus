import 'package:re_piliplus/http/loading_state.dart';
import 'package:re_piliplus/http/user.dart';
import 'package:re_piliplus/models_new/follow/data.dart';
import 'package:re_piliplus/pages/follow_type/controller.dart';

class FollowSameController extends FollowTypeController {
  @override
  Future<LoadingState<FollowData>> customGetData() =>
      UserHttp.sameFollowing(mid: mid, pn: page);
}

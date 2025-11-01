import 'package:re_piliplus/http/loading_state.dart';
import 'package:re_piliplus/http/user.dart';
import 'package:re_piliplus/models_new/follow/data.dart';
import 'package:re_piliplus/pages/follow_type/controller.dart';

class FollowedController extends FollowTypeController {
  @override
  Future<LoadingState<FollowData>> customGetData() =>
      UserHttp.followedUp(mid: mid, pn: page);
}

import 'package:re_piliplus/http/loading_state.dart';
import 'package:re_piliplus/http/user.dart';
import 'package:re_piliplus/models_new/later/data.dart';
import 'package:re_piliplus/models_new/later/list.dart';
import 'package:re_piliplus/pages/common/multi_select/base.dart';
import 'package:re_piliplus/pages/common/search/common_search_controller.dart';
import 'package:re_piliplus/pages/later/controller.dart' show BaseLaterController;
import 'package:get/get.dart';

class LaterSearchController
    extends CommonSearchController<LaterData, LaterItemModel>
    with
        CommonMultiSelectMixin<LaterItemModel>,
        DeleteItemMixin,
        BaseLaterController {
  dynamic mid = Get.arguments['mid'];
  dynamic count = Get.arguments['count'];

  @override
  Future<LoadingState<LaterData>> customGetData() => UserHttp.seeYouLater(
    page: page,
    keyword: editController.value.text,
  );

  @override
  List<LaterItemModel>? getDataList(LaterData response) {
    return response.list;
  }
}

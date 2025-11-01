import 'package:re_piliplus/grpc/bilibili/community/service/dm/v1.pb.dart';
import 'package:re_piliplus/grpc/grpc_req.dart';
import 'package:re_piliplus/grpc/url.dart';
import 'package:re_piliplus/http/loading_state.dart';
import 'package:fixnum/fixnum.dart';

class DmGrpc {
  static Future<LoadingState<DmSegMobileReply>> dmSegMobile({
    required int cid,
    required int segmentIndex,
    int type = 1,
  }) {
    return GrpcReq.request(
      GrpcUrl.dmSegMobile,
      DmSegMobileReq(
        oid: Int64(cid),
        segmentIndex: Int64(segmentIndex),
        type: type,
      ),
      DmSegMobileReply.fromBuffer,
    );
  }
}

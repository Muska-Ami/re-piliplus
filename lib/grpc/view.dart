import 'package:re_piliplus/grpc/bilibili/app/viewunite/v1.pb.dart'
    show ViewReq, ViewReply;
import 'package:re_piliplus/grpc/grpc_req.dart';
import 'package:re_piliplus/grpc/url.dart';
import 'package:re_piliplus/http/loading_state.dart';

class ViewGrpc {
  static Future<LoadingState<ViewReply>> view({
    required String bvid,
  }) {
    return GrpcReq.request(
      GrpcUrl.view,
      ViewReq(
        bvid: bvid,
      ),
      ViewReply.fromBuffer,
    );
  }
}

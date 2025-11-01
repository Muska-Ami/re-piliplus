import 'package:re_piliplus/grpc/bilibili/app/dynamic/v2.pb.dart';
import 'package:re_piliplus/grpc/bilibili/pagination.pb.dart';
import 'package:re_piliplus/grpc/grpc_req.dart';
import 'package:re_piliplus/grpc/url.dart';
import 'package:re_piliplus/http/loading_state.dart';
import 'package:fixnum/fixnum.dart';

class SpaceGrpc {
  static Future<LoadingState<OpusSpaceFlowResp>> opusSpaceFlow({
    required int hostMid,
    String? next,
    required String filterType,
  }) {
    return GrpcReq.request(
      GrpcUrl.opusSpaceFlow,
      OpusSpaceFlowReq(
        hostMid: Int64(hostMid),
        pagination: Pagination(
          pageSize: 20,
          next: next,
        ),
        filterType: filterType,
      ),
      OpusSpaceFlowResp.fromBuffer,
    );
  }
}

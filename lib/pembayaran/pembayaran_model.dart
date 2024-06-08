import '/flutter_flow/flutter_flow_util.dart';
import 'pembayaran_widget.dart' show PembayaranWidget;
import 'package:flutter/material.dart';

class PembayaranModel extends FlutterFlowModel<PembayaranWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

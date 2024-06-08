import '/flutter_flow/flutter_flow_util.dart';
import 'checkout3_widget.dart' show Checkout3Widget;
import 'package:flutter/material.dart';

class Checkout3Model extends FlutterFlowModel<Checkout3Widget> {
  ///  Local state fields for this page.

  double? price;

  double? totalan;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

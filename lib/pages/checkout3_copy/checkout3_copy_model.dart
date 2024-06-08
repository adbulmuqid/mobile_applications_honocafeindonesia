import '/flutter_flow/flutter_flow_util.dart';
import 'checkout3_copy_widget.dart' show Checkout3CopyWidget;
import 'package:flutter/material.dart';

class Checkout3CopyModel extends FlutterFlowModel<Checkout3CopyWidget> {
  ///  Local state fields for this page.

  double? price;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'myorder_widget.dart' show MyorderWidget;
import 'package:flutter/material.dart';

class MyorderModel extends FlutterFlowModel<MyorderWidget> {
  ///  Local state fields for this page.

  double? price;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in myorder widget.
  List<CardProductRecord>? pageLoad;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  List<CardProductRecord>? daleteQuery;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  List<CardProductRecord>? updateQuery;
  var sCANMeja = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}

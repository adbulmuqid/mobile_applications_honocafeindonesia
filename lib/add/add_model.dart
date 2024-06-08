import '/components/add_tocard_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_widget.dart' show AddWidget;
import 'package:flutter/material.dart';

class AddModel extends FlutterFlowModel<AddWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for addTocard component.
  late AddTocardModel addTocardModel;

  @override
  void initState(BuildContext context) {
    addTocardModel = createModel(context, () => AddTocardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    addTocardModel.dispose();
  }
}

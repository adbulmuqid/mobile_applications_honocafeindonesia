import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'searche_form_widget.dart' show SearcheFormWidget;
import 'package:flutter/material.dart';

class SearcheFormModel extends FlutterFlowModel<SearcheFormWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<ProductRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}

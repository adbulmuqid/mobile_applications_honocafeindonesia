import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for loginemail widget.
  FocusNode? loginemailFocusNode;
  TextEditingController? loginemailTextController;
  String? Function(BuildContext, String?)? loginemailTextControllerValidator;
  // State field(s) for loginpass widget.
  FocusNode? loginpassFocusNode;
  TextEditingController? loginpassTextController;
  late bool loginpassVisibility;
  String? Function(BuildContext, String?)? loginpassTextControllerValidator;

  @override
  void initState(BuildContext context) {
    loginpassVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    loginemailFocusNode?.dispose();
    loginemailTextController?.dispose();

    loginpassFocusNode?.dispose();
    loginpassTextController?.dispose();
  }
}

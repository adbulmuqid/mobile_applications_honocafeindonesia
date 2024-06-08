import '/flutter_flow/flutter_flow_util.dart';
import 'create_account_widget.dart' show CreateAccountWidget;
import 'package:flutter/material.dart';

class CreateAccountModel extends FlutterFlowModel<CreateAccountWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for createName widget.
  FocusNode? createNameFocusNode;
  TextEditingController? createNameTextController;
  String? Function(BuildContext, String?)? createNameTextControllerValidator;
  // State field(s) for createNohp widget.
  FocusNode? createNohpFocusNode;
  TextEditingController? createNohpTextController;
  String? Function(BuildContext, String?)? createNohpTextControllerValidator;
  // State field(s) for createAlamat widget.
  FocusNode? createAlamatFocusNode;
  TextEditingController? createAlamatTextController;
  String? Function(BuildContext, String?)? createAlamatTextControllerValidator;
  // State field(s) for createAccountemail widget.
  FocusNode? createAccountemailFocusNode;
  TextEditingController? createAccountemailTextController;
  String? Function(BuildContext, String?)?
      createAccountemailTextControllerValidator;
  // State field(s) for createAccountpass widget.
  FocusNode? createAccountpassFocusNode;
  TextEditingController? createAccountpassTextController;
  late bool createAccountpassVisibility;
  String? Function(BuildContext, String?)?
      createAccountpassTextControllerValidator;
  // State field(s) for passwordConfirm widget.
  FocusNode? passwordConfirmFocusNode;
  TextEditingController? passwordConfirmTextController;
  late bool passwordConfirmVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmTextControllerValidator;

  @override
  void initState(BuildContext context) {
    createAccountpassVisibility = false;
    passwordConfirmVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    createNameFocusNode?.dispose();
    createNameTextController?.dispose();

    createNohpFocusNode?.dispose();
    createNohpTextController?.dispose();

    createAlamatFocusNode?.dispose();
    createAlamatTextController?.dispose();

    createAccountemailFocusNode?.dispose();
    createAccountemailTextController?.dispose();

    createAccountpassFocusNode?.dispose();
    createAccountpassTextController?.dispose();

    passwordConfirmFocusNode?.dispose();
    passwordConfirmTextController?.dispose();
  }
}

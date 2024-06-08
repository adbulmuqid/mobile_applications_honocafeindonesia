import '/components/add_tocard_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'checkout_widget.dart' show CheckoutWidget;
import 'package:flutter/material.dart';

class CheckoutModel extends FlutterFlowModel<CheckoutWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for addTocard component.
  late AddTocardModel addTocardModel;

  @override
  void initState(BuildContext context) {
    addTocardModel = createModel(context, () => AddTocardModel());
  }

  @override
  void dispose() {
    addTocardModel.dispose();
  }
}

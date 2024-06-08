import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'add_tocard_model.dart';
export 'add_tocard_model.dart';

class AddTocardWidget extends StatefulWidget {
  const AddTocardWidget({
    super.key,
    required this.productComRef,
  });

  final DocumentReference? productComRef;

  @override
  State<AddTocardWidget> createState() => _AddTocardWidgetState();
}

class _AddTocardWidgetState extends State<AddTocardWidget> {
  late AddTocardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddTocardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ProductRecord>(
      stream: ProductRecord.getDocument(widget.productComRef!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        final containerProductRecord = snapshot.data!;
        return Container(
          width: 430.0,
          height: 80.0,
          decoration: const BoxDecoration(
            color: Color(0xFFF9F3F3),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                child: Text(
                  valueOrDefault<String>(
                    formatNumber(
                      containerProductRecord.salePrice,
                      formatType: FormatType.decimal,
                      decimalType: DecimalType.automatic,
                      currency: 'Rp.',
                    ),
                    'Rp. 0',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 24.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                child: Container(
                  width: 250.0,
                  height: 80.0,
                  decoration: const BoxDecoration(
                    color: Color(0xD22787E0),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(0.0),
                      topRight: Radius.circular(15.0),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          var cardProductRecordReference =
                              CardProductRecord.collection.doc();
                          await cardProductRecordReference
                              .set(createCardProductRecordData(
                            productId: containerProductRecord.id,
                            productRef: containerProductRecord.reference,
                            price: containerProductRecord.price,
                            finalPrice: containerProductRecord.price,
                            quantity: 1,
                            userRef: currentUserReference,
                            productImge: containerProductRecord.productImage,
                            name: containerProductRecord.name,
                          ));
                          _model.cardCreation =
                              CardProductRecord.getDocumentFromData(
                                  createCardProductRecordData(
                                    productId: containerProductRecord.id,
                                    productRef:
                                        containerProductRecord.reference,
                                    price: containerProductRecord.price,
                                    finalPrice: containerProductRecord.price,
                                    quantity: 1,
                                    userRef: currentUserReference,
                                    productImge:
                                        containerProductRecord.productImage,
                                    name: containerProductRecord.name,
                                  ),
                                  cardProductRecordReference);

                          context.pushNamed(
                            'myorder',
                            queryParameters: {
                              'finalprice': serializeParam(
                                0.0,
                                ParamType.double,
                              ),
                            }.withoutNulls,
                          );

                          setState(() {});
                        },
                        child: Text(
                          'Add to Card',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Raleway',
                                    color: const Color(0xFFF2F6F9),
                                    fontSize: 24.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: Icon(
                          Icons.shopping_cart_rounded,
                          color: Color(0xFFFAFDFF),
                          size: 24.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

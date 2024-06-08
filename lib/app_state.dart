import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      _cardProduct = (await secureStorage.getStringList('ff_cardProduct'))
              ?.map((path) => path.ref)
              .toList() ??
          _cardProduct;
    });
    await _safeInitAsync(() async {
      _cartSummary = (await secureStorage.getStringList('ff_cartSummary'))
              ?.map(double.parse)
              .toList() ??
          _cartSummary;
    });
    await _safeInitAsync(() async {
      _selectedPIc =
          await secureStorage.getString('ff_selectedPIc') ?? _selectedPIc;
    });
    await _safeInitAsync(() async {
      _listum = (await secureStorage.getStringList('ff_listum'))
              ?.map(double.parse)
              .toList() ??
          _listum;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  List<DocumentReference> _cardProduct = [
    FirebaseFirestore.instance.doc('/product/example')
  ];
  List<DocumentReference> get cardProduct => _cardProduct;
  set cardProduct(List<DocumentReference> value) {
    _cardProduct = value;
    secureStorage.setStringList(
        'ff_cardProduct', value.map((x) => x.path).toList());
  }

  void deleteCardProduct() {
    secureStorage.delete(key: 'ff_cardProduct');
  }

  void addToCardProduct(DocumentReference value) {
    _cardProduct.add(value);
    secureStorage.setStringList(
        'ff_cardProduct', _cardProduct.map((x) => x.path).toList());
  }

  void removeFromCardProduct(DocumentReference value) {
    _cardProduct.remove(value);
    secureStorage.setStringList(
        'ff_cardProduct', _cardProduct.map((x) => x.path).toList());
  }

  void removeAtIndexFromCardProduct(int index) {
    _cardProduct.removeAt(index);
    secureStorage.setStringList(
        'ff_cardProduct', _cardProduct.map((x) => x.path).toList());
  }

  void updateCardProductAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _cardProduct[index] = updateFn(_cardProduct[index]);
    secureStorage.setStringList(
        'ff_cardProduct', _cardProduct.map((x) => x.path).toList());
  }

  void insertAtIndexInCardProduct(int index, DocumentReference value) {
    _cardProduct.insert(index, value);
    secureStorage.setStringList(
        'ff_cardProduct', _cardProduct.map((x) => x.path).toList());
  }

  List<double> _cartSummary = [0.0];
  List<double> get cartSummary => _cartSummary;
  set cartSummary(List<double> value) {
    _cartSummary = value;
    secureStorage.setStringList(
        'ff_cartSummary', value.map((x) => x.toString()).toList());
  }

  void deleteCartSummary() {
    secureStorage.delete(key: 'ff_cartSummary');
  }

  void addToCartSummary(double value) {
    _cartSummary.add(value);
    secureStorage.setStringList(
        'ff_cartSummary', _cartSummary.map((x) => x.toString()).toList());
  }

  void removeFromCartSummary(double value) {
    _cartSummary.remove(value);
    secureStorage.setStringList(
        'ff_cartSummary', _cartSummary.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromCartSummary(int index) {
    _cartSummary.removeAt(index);
    secureStorage.setStringList(
        'ff_cartSummary', _cartSummary.map((x) => x.toString()).toList());
  }

  void updateCartSummaryAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    _cartSummary[index] = updateFn(_cartSummary[index]);
    secureStorage.setStringList(
        'ff_cartSummary', _cartSummary.map((x) => x.toString()).toList());
  }

  void insertAtIndexInCartSummary(int index, double value) {
    _cartSummary.insert(index, value);
    secureStorage.setStringList(
        'ff_cartSummary', _cartSummary.map((x) => x.toString()).toList());
  }

  String _selectedPIc = '';
  String get selectedPIc => _selectedPIc;
  set selectedPIc(String value) {
    _selectedPIc = value;
    secureStorage.setString('ff_selectedPIc', value);
  }

  void deleteSelectedPIc() {
    secureStorage.delete(key: 'ff_selectedPIc');
  }

  List<double> _listum = [];
  List<double> get listum => _listum;
  set listum(List<double> value) {
    _listum = value;
    secureStorage.setStringList(
        'ff_listum', value.map((x) => x.toString()).toList());
  }

  void deleteListum() {
    secureStorage.delete(key: 'ff_listum');
  }

  void addToListum(double value) {
    _listum.add(value);
    secureStorage.setStringList(
        'ff_listum', _listum.map((x) => x.toString()).toList());
  }

  void removeFromListum(double value) {
    _listum.remove(value);
    secureStorage.setStringList(
        'ff_listum', _listum.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromListum(int index) {
    _listum.removeAt(index);
    secureStorage.setStringList(
        'ff_listum', _listum.map((x) => x.toString()).toList());
  }

  void updateListumAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    _listum[index] = updateFn(_listum[index]);
    secureStorage.setStringList(
        'ff_listum', _listum.map((x) => x.toString()).toList());
  }

  void insertAtIndexInListum(int index, double value) {
    _listum.insert(index, value);
    secureStorage.setStringList(
        'ff_listum', _listum.map((x) => x.toString()).toList());
  }

  bool _searchactive = false;
  bool get searchactive => _searchactive;
  set searchactive(bool value) {
    _searchactive = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}

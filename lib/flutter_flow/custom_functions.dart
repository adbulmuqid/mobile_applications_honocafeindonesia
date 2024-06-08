import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

double? priceSummary(List<double>? allPrices) {
  // add list of price
  if (allPrices == null || allPrices.isEmpty) {
    return 0.0;
  }
  double sum = 0.0;
  for (double price in allPrices) {
    sum += price;
  }
  return sum;
}

double listsumCopy(List<double> finalprice) {
  // add list of price
  double sum = 0.0;
  for (double p in finalprice) {
    sum += p;
  }
  return sum;
}

double quantityPric(
  String price,
  int quantity,
) {
  // multiply price with quantity
  double parsedPrice = double.parse(price);
  return parsedPrice * quantity;
}

double listsum(List<double> price) {
  // add list of price
  double sum = 0.0;
  for (double p in price) {
    sum += p;
  }
  return sum;
}

double? listum(List<double>? allPrice) {
  if (allPrice == null || allPrice.isEmpty) {
    return null;
  }
// add list of price
  double sum = 0.0;
  for (double price in allPrice) {
    sum += price;
  }
  return sum;
}

double negativeprice(
  String price,
  int quantity,
) {
  // multiply price with quantity
  double parsedPrice = double.parse(price);
  return -(parsedPrice * quantity);
}

double totalan(List<double> totalakhir) {
  // add list of price
  double sum = 0.0;
  for (double p in totalakhir) {
    sum += p;
  }
  return sum;
}

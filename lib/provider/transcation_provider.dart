import 'package:expense_tracker_app/model/transaction.dart';
import 'package:flutter/material.dart';

class TranscationProvider extends ChangeNotifier {
  final List<Transaction> _transactions = [];

  List<Transaction> get transaction => _transactions;

  double get totalIncome => _transactions
      .where((tx) => tx.isIncome)
      .fold(0, (sum, tx) => sum + tx.amount);
}

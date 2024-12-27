import 'package:flutter_bloc/flutter_bloc.dart';

// Cubit for Simple Interest
class SimpleInterestCubit extends Cubit<double> {
  SimpleInterestCubit() : super(0.0);

  void calculate(double principal, double rate, double time) {
    emit((principal * rate * time) / 100);
  }
}

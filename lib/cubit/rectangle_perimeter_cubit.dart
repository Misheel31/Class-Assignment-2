import 'package:flutter_bloc/flutter_bloc.dart';

class RectanglePerimeterCubit extends Cubit<double> {
  RectanglePerimeterCubit() : super(0.0);

  void calculatePerimeter(double length, double breadth) {
    emit(2 * (length + breadth));
  }
}

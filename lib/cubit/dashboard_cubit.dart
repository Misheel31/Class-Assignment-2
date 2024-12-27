import 'package:class_assignment_2/cubit/area_of_circle_cubit.dart';
import 'package:class_assignment_2/cubit/rectangle_perimeter_cubit.dart';
import 'package:class_assignment_2/cubit/simple_interest_cubit.dart';
import 'package:class_assignment_2/view/area_of_circle_cubit_view.dart';
import 'package:class_assignment_2/view/rectangle_perimeter_cubit_view.dart';
import 'package:class_assignment_2/view/simple_interest_cubit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<void> {
  DashboardCubit(
    this._simpleInterestCubit,
    this._circleAreaCubit,
    this._rectanglePerimeterCubit,
  ) : super(null);

  final SimpleInterestCubit _simpleInterestCubit;
  final CircleAreaCubit _circleAreaCubit;
  final RectanglePerimeterCubit _rectanglePerimeterCubit;

  void openSimpleInterestView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _simpleInterestCubit,
          child: const SimpleInterestCubitView(),
        ),
      ),
    );
  }

  void openCircleAreaView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _circleAreaCubit,
          child: const CircleAreaCubitView(),
        ),
      ),
    );
  }

  void openRectangelPerimeterView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _rectanglePerimeterCubit,
          child: const RectanglePerimeterCubitView(),
        ),
      ),
    );
  }
}

import 'package:class_assignment_2/cubit/area_of_circle_cubit.dart';
import 'package:class_assignment_2/cubit/rectangle_perimeter_cubit.dart';
import 'package:class_assignment_2/cubit/simple_interest_cubit.dart';
import 'package:class_assignment_2/view/area_of_circle_cubit_view.dart';
import 'package:class_assignment_2/view/rectangle_perimeter_cubit_view.dart';
import 'package:class_assignment_2/view/simple_interest_cubit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubitView extends StatelessWidget {
  const DashboardCubitView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          children: [
            SizedBox(height: 30),
            Text('Misheel Class Assignment 2'),
          ],
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        color: Colors.lightGreenAccent[50],
        child: GridView(
          padding: const EdgeInsets.all(16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          children: <Widget>[
            Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BlocProvider(
                        create: (_) => SimpleInterestCubit(),
                        child: const SimpleInterestCubitView(),
                      ),
                    ),
                  );
                },
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.percent, size: 48, color: Colors.blueGrey),
                      Text('Simple Interest'),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BlocProvider(
                        create: (_) => CircleAreaCubit(),
                        child: const CircleAreaCubitView(),
                      ),
                    ),
                  );
                },
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.calculate,
                        size: 48,
                        color: Colors.green,
                      ),
                      Text('Area of Circle'),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BlocProvider(
                        create: (_) => RectanglePerimeterCubit(),
                        child: const RectanglePerimeterCubitView(),
                      ),
                    ),
                  );
                },
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.calculate,
                        size: 48,
                        color: Colors.blueAccent,
                      ),
                      Text('Perimeter of Rectangle'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

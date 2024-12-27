import 'package:class_assignment_2/cubit/rectangle_perimeter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RectanglePerimeterCubitView extends StatelessWidget {
  const RectanglePerimeterCubitView({super.key});

  @override
  Widget build(BuildContext context) {
    final lengthController = TextEditingController();
    final breadthController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Column(
          children: [
            SizedBox(height: 30),
            Text('Misheel Class Assignment 2'),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: lengthController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Length',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: breadthController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Breadth',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  final length = double.tryParse(lengthController.text) ?? 0.0;
                  final breadth =
                      double.tryParse(breadthController.text) ?? 0.0;

                  context
                      .read<RectanglePerimeterCubit>()
                      .calculatePerimeter(length, breadth);
                },
                child: const Text('Calculate Perimeter'),
              ),
            ),
            const SizedBox(height: 16),
            BlocBuilder<RectanglePerimeterCubit, double>(
              builder: (context, perimeter) {
                return Text(
                  'Perimeter: $perimeter',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

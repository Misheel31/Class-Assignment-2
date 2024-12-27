import 'package:class_assignment_2/cubit/area_of_circle_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CircleAreaCubitView extends StatelessWidget {
  const CircleAreaCubitView({super.key});

  @override
  Widget build(BuildContext context) {
    final radiusController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Column(
          children: [
            SizedBox(height: 30),
            Text('Area of Circle'),
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              controller: radiusController,
              decoration: const InputDecoration(
                  labelText: 'Radius', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            BlocBuilder<CircleAreaCubit, double>(
              builder: (context, area) {
                return Text(
                  'Area: ${area.toStringAsFixed(2)}',
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                );
              },
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  final radius = double.tryParse(radiusController.text) ?? 0.0;
                  context.read<CircleAreaCubit>().calculate(radius);
                },
                child: const Text('Calculate'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:class_assignment_2/cubit/simple_interest_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleInterestCubitView extends StatelessWidget {
  const SimpleInterestCubitView({super.key});

  @override
  Widget build(BuildContext context) {
    final principalController = TextEditingController();
    final rateController = TextEditingController();
    final timeController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Column(
          children: [
            SizedBox(height: 20),
            Text('Misheel Class Assignment 2'),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              controller: principalController,
              decoration: const InputDecoration(
                  labelText: 'Principal', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: rateController,
              decoration: const InputDecoration(
                  labelText: 'Rate (%)', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: timeController,
              decoration: const InputDecoration(
                  labelText: 'Time', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            BlocBuilder<SimpleInterestCubit, double>(
              builder: (context, interest) {
                return Text(
                  'Simple Interest: ${interest.toStringAsFixed(2)}',
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
                    final principal =
                        double.tryParse(principalController.text) ?? 0.0;
                    final rate = double.tryParse(rateController.text) ?? 0.0;
                    final time = double.tryParse(timeController.text) ?? 0.0;
                    context
                        .read<SimpleInterestCubit>()
                        .calculate(principal, rate, time);
                  },
                  child: const Text('Calculate')),
            )
          ],
        ),
      ),
    );
  }
}

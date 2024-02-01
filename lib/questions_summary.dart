import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
            children: summaryData.map((data) {
          return Row(
            children: [
              Text(((data['question_index'] as int) + 1).toString()),
              const SizedBox(width: 30),
              Expanded(
                child: Column(
                  children: [
                    Text(data['question'] as String,
                        style: const TextStyle(color: Colors.white)),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(data['user_answer'] as String,
                        style: const TextStyle(color: Colors.grey)),
                    Text(
                      data['correct_answer'] as String,
                      style: const TextStyle(color: Colors.green),
                    ),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ],
          );
        }).toList()),
      ),
    );
  }
}
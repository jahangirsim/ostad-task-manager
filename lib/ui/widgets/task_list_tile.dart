import 'package:flutter/material.dart';

class TaskListTile extends StatelessWidget {
  const TaskListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('Lorem Ipsum is sinply dummy'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Subtitle'),
          const Text('Date'),
          Row(
            children: [
              const Chip(
                label: Text('New'),
                backgroundColor: Colors.green,
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.delete),
                color: Colors.red.shade200,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.edit),
                color: Colors.green,
              ),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SpeedDialFAB extends StatefulWidget {
  const SpeedDialFAB({Key? key}) : super(key: key);

  @override
  State<SpeedDialFAB> createState() => _SpeedDialFABState();
}

class _SpeedDialFABState extends State<SpeedDialFAB> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        if (isOpen) ...[
          Positioned(
            bottom: 160,
            right: 0,
            child: _buildMiniButton(
              Icons.location_on,
              Colors.deepOrange,
                  () {
                setState(() => isOpen = false);
                // Add location logic
              },
            ),
          ),
          Positioned(
            bottom: 100,
            right: 0,
            child: _buildMiniButton(
              Icons.inbox,
              Colors.deepOrange,
                  () {
                setState(() => isOpen = false);
                // Add box logic
              },
            ),
          ),
          Positioned(
            bottom: 40,
            right: 0,
            child: _buildMiniButton(
              Icons.widgets,
              Colors.deepOrange,
                  () {
                setState(() => isOpen = false);
                // Add item logic
              },
            ),
          ),
        ],
        FloatingActionButton(
          backgroundColor: Colors.deepOrange,
          onPressed: () {
            setState(() {
              isOpen = !isOpen;
            });
          },
          child: Icon(
            isOpen ? Icons.close : Icons.add,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildMiniButton(IconData icon, Color color, VoidCallback onPressed) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: FloatingActionButton.small(
        backgroundColor: color,
        onPressed: onPressed,
        child: Icon(
          icon,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }}
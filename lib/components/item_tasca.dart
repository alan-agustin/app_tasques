import 'package:flutter/material.dart';

class ItemTasca extends StatelessWidget {
  final String textTasca;
  final bool valorCheckBox;
  const ItemTasca({
    super.key,
    required this.textTasca,
    required this.valorCheckBox,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        left: 16,
        right: 16,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.teal[300],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              //checkbox
              Checkbox(
                activeColor: Colors.teal[200],
                checkColor: Colors.orange[200],
                side: BorderSide(
                  color: Colors.orange[200]!,
                  width: 2,
                ),
                value: valorCheckBox,
                onChanged: (valorRebut) {},
              ),
              //text
              Text(
                textTasca,
                style: TextStyle(
                  color: Colors.orange[200],
                  decoration: valorCheckBox
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                  decorationColor: Colors.orange[200],
                  decorationThickness: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

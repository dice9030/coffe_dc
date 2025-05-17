import 'package:flutter/material.dart';

class DeliveryToggle extends StatefulWidget {
  @override
  _DeliveryToggleState createState() => _DeliveryToggleState();
}

class _DeliveryToggleState extends State<DeliveryToggle> {
  bool isDelivery = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Color(0xfff0f0f0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          // Botón "Deliver"
          Expanded(
            child: GestureDetector(
              onTap: () => setState(() => isDelivery = true),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: isDelivery ? Color(0xffC67C4E) : Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Deliver',
                    style: TextStyle(
                      color: isDelivery ? Colors.white : Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Botón "Pick Up"
          Expanded(
            child: GestureDetector(
              onTap: () => setState(() => isDelivery = false),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: !isDelivery ? Color(0xffC67C4E) : Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Pick Up',
                    style: TextStyle(
                      color: !isDelivery ? Colors.white : Colors.black,
                      fontWeight: FontWeight.w500,
                        fontSize: 18
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final num order;

  final _blackColor = const Color(0xFF1F2123);

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    double offsetDy = -order * 20;
    return Transform.translate(
        offset: Offset(0, offsetDy),
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: isInverted ? Colors.white : _blackColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: isInverted ? _blackColor : Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          amount,
                          style: TextStyle(
                              color: isInverted
                                  ? _blackColor.withOpacity(0.8)
                                  : Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            code,
                            style: TextStyle(
                                color: isInverted
                                    ? _blackColor.withOpacity(0.8)
                                    : Colors.white.withOpacity(0.8),
                                fontSize: 20),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Transform.scale(
                    scale: 2.2,
                    child: Transform.translate(
                      offset: const Offset(0, 12),
                      child: Icon(
                        icon,
                        color: isInverted ? _blackColor : Colors.white,
                        size: 90,
                      ),
                    ))
              ],
            ),
          ),
        ));
  }
}

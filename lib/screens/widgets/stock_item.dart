import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:grow/conf.dart';

class StockItem extends StatelessWidget {
  StockItem({
    super.key,
    required this.trade,
  });
  Trade trade;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Card(
        color: Colors.white,
        elevation: 3,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                trade.logo == ""
                    ? Container()
                    : Container(
                        alignment: Alignment.topLeft,
                        child: Image.asset(
                          trade.logo,
                          height: 30,
                          width: 30,
                        ),
                      ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    trade.name,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    trade.price,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    trade.negative,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: trade.positive
                          ? Colors.greenAccent.shade700
                          : Colors.redAccent.shade400,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

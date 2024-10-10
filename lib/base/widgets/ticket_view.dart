import 'package:flutter/material.dart';
import 'package:myanmar_air_international/base/res/styles/app_styles.dart';
import 'package:myanmar_air_international/base/widgets/app_layoutbuilder_widget.dart';
import 'package:myanmar_air_international/base/widgets/big_circle.dart';
import 'package:myanmar_air_international/base/widgets/big_dot.dart';
import 'package:myanmar_air_international/base/widgets/text_style_four.dart';
import 'package:myanmar_air_international/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width + 0.85,
        height: 189,
        child: Container(
          margin: const EdgeInsets.only(right: 16),
          child: Column(
            children: [
              //blue part of the ticket
              Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: AppStyles.ticketBlue,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(21),
                          topRight: Radius.circular(21))),
                  child: Column(
                    children: [
                      // show departure and destination with icon first
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextStyleThird(text: 'YGN'),
                          Expanded(child: Container()),
                          const BigDot(),
                          Expanded(
                              child: Stack(
                            children: [
                              const SizedBox(
                                height: 24,
                                child: AppLayoutbuilderWidget(randomDivider: 6),
                              ),
                              Center(
                                  child: Transform.rotate(
                                angle: 1.57,
                                child: Icon(Icons.local_airport_rounded,
                                    color: Colors.white),
                              ))
                            ],
                          )),
                          const BigDot(),
                          Expanded(child: Container()),
                          TextStyleThird(text: 'MDY'),
                        ],
                      ),
                      // show departure and destination with time
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              width: 100, child: TextStyleFour(text: 'Yangon')),
                          Expanded(child: Container()),
                          TextStyleThird(text: '8H 30M'),
                          Expanded(child: Container()),
                          SizedBox(
                            width: 100,
                            child: TextStyleFour(
                              text: 'Mandalay',
                              align: TextAlign.end,
                            ),
                          )
                        ],
                      )
                    ],
                  )),
              //circles and dots
              Container(
                color: AppStyles.ticketOrange,
                child: Row(
                  children: [
                    BigCircle(
                      isRight: false,
                    ),
                    Expanded(
                        child: AppLayoutbuilderWidget(
                            randomDivider: 16, width: 6)),
                    BigCircle(
                      isRight: true,
                    )
                  ],
                ),
              ),
              //orange part of the ticket
              Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: AppStyles.ticketOrange,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(21),
                          bottomRight: Radius.circular(21))),
                  child: Column(
                    children: [
                      // show departure and destination with icon first
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextStyleThird(text: '1 May'),
                          Expanded(child: Container()),
                          TextStyleThird(text: '08:00 AM'),
                          Expanded(child: Container()),
                          TextStyleThird(text: '23')
                        ],
                      ),
                      // show departure and destination with time
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextStyleFour(text: 'Date'),
                          Expanded(child: Container()),
                          TextStyleFour(text: 'Departure Time'),
                          Expanded(child: Container()),
                          TextStyleFour(text: 'Number')
                        ],
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}

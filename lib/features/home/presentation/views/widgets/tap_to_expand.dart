import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';
import 'package:nafas_app/features/home/data/model/treatment_plan_model.dart';

class TapToExpandWidget extends StatefulWidget {
  const TapToExpandWidget({super.key, required this.treatmentPlanModel});
  final TreatmentPlanModel treatmentPlanModel;
  @override
  TapToExpandWidgetState createState() => TapToExpandWidgetState();
}

class TapToExpandWidgetState extends State<TapToExpandWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
      child: AnimatedSize(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        child: Container(
          margin: EdgeInsets.only(bottom: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 22,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        widget.treatmentPlanModel.title,
                        style: TextStyles.medium16(context).copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                    AnimatedRotation(
                      duration: Duration(milliseconds: 500),
                      turns: _isExpanded ? 0.25 : 0.5,
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color:
                            _isExpanded ? AppColors.primaryColor : Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                _isExpanded
                    ? Text(
                        widget.treatmentPlanModel.content
                            .map((e) => "• $e")
                            .join("\n"),
                        style: TextStyles.medium16(context),
                      )
                    : SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

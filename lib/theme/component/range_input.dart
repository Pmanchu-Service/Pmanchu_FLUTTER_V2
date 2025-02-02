import 'package:flutter/material.dart';
import 'package:pmanchu_v2/service/theme_service.dart';

class RangeInput extends StatefulWidget {
  final ValueChanged<DateTimeRange> onChanged;
  const RangeInput({super.key, required this.onChanged});

  @override
  State<RangeInput> createState() => _RangeInputState();
}

class _RangeInputState extends State<RangeInput> {
  DateTime _start = DateTime.now();
  DateTime _end = DateTime.now();
  bool _initialized = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDateRangePicker(
          context: context,
          locale: const Locale('ko'),
          initialDateRange: DateTimeRange(start: _start, end: _end),
          firstDate: DateTime(2000),
          lastDate: DateTime(2100)
        ).then((range) {
          if (range == null) return;
          setState(() {
            _start = range.start;
            _end = range.end;
            _initialized = true;
          });
          widget.onChanged(range);
        });
      },
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              height: 45,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
              decoration: BoxDecoration(
                color: context.color.gray1,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: context.color.gray2
                )
              ),
              child: Text(
                '${_start.year}/${_start.month.toString().padLeft(2, '0')}/${_start.day.toString().padLeft(2, '0')}',
                style: TextStyle(
                  color: _initialized ? context.color.system3 : context.color.gray5,
                  fontWeight: context.typo.regular,
                  fontSize: 14,
                  height: 1
                )
              )
            )
          ),
          const Expanded(
            flex: 1,
            child: Center(
              child: Text('~')
            )
          ),
          Expanded(
            flex: 3,
            child: Container(
              height: 45,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
              decoration: BoxDecoration(
                color: context.color.gray1,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: context.color.gray2
                )
              ),
              child: Text(
                '${_end.year}/${_end.month.toString().padLeft(2, '0')}/${_end.day.toString().padLeft(2, '0')}',
                style: TextStyle(
                  color: _initialized ? context.color.system3 : context.color.gray5,
                  fontWeight: context.typo.regular,
                  fontSize: 14,
                  height: 1
                )
              )
            )
          )
        ]
      )
    );
  }
}

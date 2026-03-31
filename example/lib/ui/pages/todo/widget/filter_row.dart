import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

class FilterRow extends StatelessWidget {
  const FilterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: .horizontal,
      child: Row(
        spacing: 8,
        children: [
          _buildFilter( '전체', isSelected: true,),
          _buildFilter( '업무'),
          _buildFilter( '개인'),
          _buildFilter( '건강'),
      ],
      ),
    );
    
  }

//언더바 있으면 private
  Widget _buildFilter(
    String text, {
      bool isSelected = false
    })
    { return Container(
        padding: .symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFF8B5CF6) : Colors.grey[300],
          borderRadius: .all(.circular(50)),
        ),
        child: Text(
          text,
          style: TextStyle(color: isSelected ? Colors.white : Colors.black, fontSize: 14, fontWeight: .w700,),
          ),
      );
    }
}
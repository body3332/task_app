import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget ProductCard() {
  return Container(
    width: 160,
    margin: const EdgeInsets.symmetric(horizontal: 8),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade300),
      borderRadius: BorderRadius.circular(15), // خليتها 15 عشان تشبه الصورة أكتر
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // مكان الصورة
        Container(
          height: 100, // قللت الطول شوية عشان الـ Overflow
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(child: Icon(Icons.image, color: Colors.grey)), 
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text("Organic Bananas", 
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            maxLines: 1, // عشان النص مياخدش سطرين ويضرب
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text("7pcs, Priceg", style: TextStyle(color: Colors.grey, fontSize: 12)),
        ),
        const Spacer(), // بيزق السعر والزرار لتحت خالص
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("\$4.99", 
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: const Color(0xFF53B175),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(Icons.add, color: Colors.white, size: 20),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
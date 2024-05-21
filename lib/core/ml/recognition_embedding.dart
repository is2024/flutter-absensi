import 'package:flutter/material.dart';

class RecognitionEmbedding {
  Rect location;
  List<double> embedding;

  RecognitionEmbedding(this.location, this.embedding);
}
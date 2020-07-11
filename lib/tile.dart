import 'package:flutter/material.dart';

List<TileModel> tileList = new List<TileModel>();

class TileModel {
  bool isSelected;

  TileModel({this.isSelected});

  void setIsSelected(bool getIsSelected) {
    isSelected = getIsSelected;
  }

  bool getIsSelected() {
    return isSelected;
  }
}

List<TileModel> getTileList() {
  for(int i = 0; i < 64; i++) {
    TileModel tileModel = new TileModel();
    tileModel.setIsSelected(false);
    tileList.add(tileModel);
  }
  return tileList;
}
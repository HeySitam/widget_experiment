class FromMethodIterable {
  void listConversionExample() {
    //way 1
    final listA = [1,2,3,4,5];
    final listB = [];
    listB.addAll(listA);
    
    //way 2
    final listC = [1,2,3,4,5];
    final listD = List.from(listC);

  }
}
class MyPayment {
  final String title;
  final String desc;
  final num amount;

  MyPayment(this.title, this.desc, this.amount);
}

List<MyPayment> myPayments = [
  MyPayment("Salary", "Baking Interactive", 2000),
  MyPayment("Paypal ", "Freelance Project", 562),
  MyPayment("Salary", "Banking Interactive", 3999),
  MyPayment("Paypal", "Freelance Interactive", 974),
];

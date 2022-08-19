// ignore_for_file: prefer_typing_uninitialized_variables

class DonationDetails {
  final amount;
  final currency;
  final currencySign;
  final oneTimeDonor;
  final monthlyDonor;

  DonationDetails(this.amount, this.currency, this.currencySign,
      this.oneTimeDonor, this.monthlyDonor);
}

class DonorType {
  final type;
  dynamic color;

  DonorType(this.type, this.color,);
}

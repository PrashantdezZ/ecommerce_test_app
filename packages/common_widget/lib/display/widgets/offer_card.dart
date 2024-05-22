part of common_widget;

class OfferCard extends StatelessWidget {
  const OfferCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: kBlue400,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SemiBoldText("Deal of the day", 16, kWhite),
              RegularText("22h 55m 20s remaining", 12, kWhite),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(width: 1.2, color: kWhite),
              color: kBlue400,
            ),
            child: Row(
              children: [
                RegularText("view all ", 12, kWhite),
                sizedBoxWidth(4),
                Icon(
                  Icons.arrow_right_alt,
                  color: kWhite,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TrendingProducts extends StatelessWidget {
  const TrendingProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: kPink,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SemiBoldText("Trending Products", 16, kWhite),
              RegularText("22h 55m 20s remaining", 12, kWhite),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(width: 1.2, color: kWhite),
              color: kPink,
            ),
            child: Row(
              children: [
                RegularText("view all ", 12, kWhite),
                sizedBoxWidth(4),
                Icon(
                  Icons.arrow_right_alt,
                  color: kWhite,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

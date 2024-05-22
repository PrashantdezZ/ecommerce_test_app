part of common_widget;


class SortButton extends StatelessWidget {
  const SortButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.08), // Color with 8% opacity
          offset: Offset(1, 1), // x=1, y=1
          blurRadius: 16, // blur=16
          spreadRadius: 0, // spread=0
        ),
      ], borderRadius: BorderRadius.circular(8), color: kWhite),
      child: Row(
        children: [
          RegularText("Sort", 12, kBlack),
          sizedBoxWidth(4),
          SvgPicture.asset(
            Assets.icons.sort,
            color: kBlack,
          ),
        ],
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  const FilterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // _services.getDealoftheDayProducts("Mens");
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.08), // Color with 8% opacity
            offset: Offset(1, 1), // x=1, y=1
            blurRadius: 16, // blur=16
            spreadRadius: 0, // spread=0
          ),
        ], borderRadius: BorderRadius.circular(8), color: kWhite),
        child: Row(
          children: [
            RegularText("Filter", 12, kBlack),
            sizedBoxWidth(4),
            SvgPicture.asset(
              Assets.icons.filter,
              color: kBlack,
            ),
          ],
        ),
      ),
    );
  }
}




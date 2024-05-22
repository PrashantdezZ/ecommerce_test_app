part of common_widget;


class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        // width: screenWidth * 0.62,
        child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(color: kWhite, boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.08),
            offset: Offset(1, 1),
            blurRadius: 16,
            spreadRadius: 0,
          ),
        ]),
        child: TextField(
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 14, vertical: 9),
            hintText: 'search any Product',
            hintStyle: TextStyle(
              fontSize: 14,
              color: kGrey150,
            ),
            border: InputBorder.none,
            isDense: true,
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: 12, right: 8),
              child: Icon(
                Icons.search,
                color: kGrey150,
                size: 20,
              ),
            ),
            suffixIcon: Padding(
              padding: EdgeInsets.only(left: 8, right: 12),
              child: Icon(
                Icons.mic,
                color: kGrey150,
                size: 20,
              ),
            ),
          ),
          style: TextStyle(
            fontSize: 16,
            color: kGrey800,
          ),
        ),
      ),
    ));
  }
}



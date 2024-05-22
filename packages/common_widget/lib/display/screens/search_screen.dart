part of common_widget;





class SerachScreen extends StatefulWidget {
  const SerachScreen({super.key});

  @override
  State<SerachScreen> createState() => _SerachScreenState();
}

class _SerachScreenState extends State<SerachScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: BoldText("Search Screen", 15, kBlack),),
    );
  }
}
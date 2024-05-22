flutter clean
flutter pub get
echo 'Pub get successfully executed in ecommerce App.'
cd packages/global && flutter pub get
echo 'Pub get successfully executed in global package.'
cd .. && cd common_widget && flutter pub get
echo 'Pub get successfully executed in common_widget package.'

# TODO - ENDOF PUB GET

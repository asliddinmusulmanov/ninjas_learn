import 'address.dart';
import 'coordinates.dart';
import 'goecoe_client.dart';

class GeoCode {
  final String apiKey;
  final GeocodeClient _client = GeocodeclientImpl();

  GeoCode({this.apiKey = ''});

  /// Resolves to an [Address] given a pair [latitude] and [longitude].
  ///
  /// Throws a [GeocodeException].
  Future<Address> reverseGeocoding(
      {required double latitude, required double longitude}) {
    return _client
        .reverseGeocoding(latitude, longitude, apiKey)
        .then((address) => address)
        .catchError((error) => throw error);
  }

  /// Returns [Coordinates] from a given [address].
  ///
  /// Throws a [GeocodeException].
  Future<Coordinates> forwardGeocoding({required String address}) {
    return _client
        .forwardGeocoding(address, apiKey)
        .then((coordinates) => coordinates)
        .catchError((error) => throw error);
  }
}

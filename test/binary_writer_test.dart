library;

import 'package:tekartik_midi/midi_writer.dart';

import 'test_common.dart';

void main() {
  group('binary writer', () {
    test('write BE', () {
      final writer = BinaryBEWriter();
      final data = <int>[0xAB, 0, 1, 0xCD, 0xEF, 2, 3, 4, 5];
      writer.writeUint8(0xAB);
      writer.writeUint16(1);
      writer.writeUint16(0xCDEF);
      writer.writeUint32(0x02030405);
      expect(writer.data, equals(data));
    });
  });
}

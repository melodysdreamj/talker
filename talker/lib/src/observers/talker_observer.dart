import 'package:talker/src/models/talker_data/talker_data.dart';
import 'package:talker_error_handler_core/talker_error_handler_core.dart';

abstract class TalkerObserver {
  Function(ErrorContainer err) get onError;
  Function(TalkerDataInterface data) get onLog;
}
# 4.0.2
- Fix inconsistent colors at TalkerScreen
- Add **LogColors** typedef in TalkerTheme ```(Map<TalkerLogType, Color>)```

Thanks to [XanderD99](https://github.com/XanderD99)
# 4.0.1
- Fix talker configure method problems [issue #186](https://github.com/Frezyx/talker/issues/186)

Thanks to [K1yoshiSho](https://github.com/K1yoshiSho)

# 4.0.0
- Add ability to customize **colors** and **titles** of any Talker logs
- Add ability to customize **colors** of any logs in TalkerScreen UI 
- Add **TalkerLogType** enum for clear differentiation of logs by types.
- Update TalkerScreen UI (The interface is now even more user-friendly)
- Huge documentation update
- Make 100% test coverage of **talker_bloc_logger** and **talker_dio_logger**
- Add expand / collapse ability for one log card
- Packages versions synchronization (Now the versions of all core libraries will be identical)
- **BREAKING** TalkerDataInterface deleted (Now base data class is **TalkerData**)

- Fix: Text color not always visible [issue #174](https://github.com/Frezyx/talker/issues/174)
- Add custom title format [issue #170](https://github.com/Frezyx/talker/issues/170)
- Fix: Logger not resets log color [issue #86](https://github.com/Frezyx/talker/issues/86)

Check more details in [documentation](https://github.com/Frezyx/talker)

# 4.0.0-dev.6
- Make 100% tests coverage 
- Update example UI
- Add custom log titles documentation
- Fix TalkerScreen log colors setup
- Fix TalkerScreenTheme textColor providing

# 4.0.0-dev.5
- Huge documentation update
- Update talker_flutter styles
- Add expand / collapse ability for one log card
- Add colors customization examples

# 4.0.0-dev.4
- Add new tests to make 100% coverage
- Fix linter issues

# 4.0.0-dev.3
- Update **talker_logger** settings setup method

# 4.0.0-dev.2
- Fix types and remove unused code

# 4.0.0-dev.1
- First version with Logs keys implementation 
- **BREAKING** TalkerDataInterface deleted
- Add new talker colors customization

# 2.4.0
- Update **talker** version to 3.2.0
- Add ability to setup custom history implementation
- Add **abstract class TalkerHistory**
- Add **DefaultTalkerHistory** implementation with basic (previous) functionality by default

Thanks to [Ppito](https://github.com/Ppito)

## 2.3.3
- Update **talker** version to 3.1.7

## 2.3.2
- Update **talker** version to 3.1.6
- Fix last deploy issues (Member not found for WellKnownTitles issue)

## 2.3.1
- Update README.md

## 2.3.0
- Add onCreate, onClose logs
- Add **printClosings** **printCreations** settings fields (false by default)

Thanks to [cem256](https://github.com/cem256)

## 2.2.2
- Update **talker** version to 3.1.5

## 2.2.1
- Update **talker** version to 3.1.4

## 2.2.0
- Rename (fix typo) **recvie** -> **receive** in BlocEventLog
- Upgrade **talker** version to 3.1.0

Thanks to [wcoder](https://github.com/wcoder)
## 2.1.1
- Add topics in pubspec.yaml
- Update talker version to 3.0.4
- Update sdk version to **'>=2.15.0 <4.0.0'**
## 2.1.0
- Add logging for **onChange** method to enable **Cubit**'s logs
- Add **printEvents**, **printTransitions**, **printChanges** fields in **TalkerBlocLoggerSettings**

## 2.0.0
- Upgrade **talker** version to 3.0.0

## 2.0.0-dev.3
- Upgrade **talker** version to 3.0.0-dev.13

## 2.0.0-dev.2
- Downgrade meta version to 1.8.0

## 2.0.0-dev.1
- Upgrade talker to 3.0.0-dev.4 version
- Make titles well known 
  (WellKnownTitles.blocEvent.title & WellKnownTitles.blocTransition.title)

## 1.1.0
- **FEAT**: Add transitionFilter and eventFilter to filtering logs

## 1.0.2
- **FIX**: message generation for talker_flutter

## 1.0.1
- **FIX**: package path in example code sample

Thanks to [SamuelMTDavies](https://github.com/SamuelMTDavies)

## 1.0.0
- **FEAT**: Add TalkerBlocLoggerSettings for customize settings
- **FEAT**: Add Talker addon functionality
- **FEAT**: Upgrade logs formatting


## 0.1.1
- **FEAT**: Update talker version to 2.4.0

## 0.1.0

Initial release with base **TalkerBlocObserver** implementation

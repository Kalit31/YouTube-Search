# YouTube_Search_bloc

## Overview

> This is an app built by closely following **BLoC (Business Logic Component)** architecture pattern in flutter. The app is built in accordance with the following tutorial blog :-  [Tutorial](https://resocoder.com/2019/02/06/flutter-youtube-search-01-setup-model-bloc-tutorial-course/)


### Data Flow-

 Data Source(mayBe API call or use cached data) **-->** Repository **-->**  Bloc

Bloc Events are called by the view components which trigger a change in Bloc States, which is used by the BlocBuilder to render the UI.

### Code uses the following dependecies:-
 
**BLoC package-**
Helps to easily implement BLoC architecture
```yaml
dependencies:
  flutter_bloc: ^0.5.3
```
- [Documentation](https://pub.dev/packages/flutter_bloc)

**built_value package-** Converts JSON objects to Dart objects
```yaml
dependencies:
 built_value: ^6.3.0
 built_collection: ^4.1.0
```

**kiwi package-**  For dependency injection
```yaml
dependencies:
kiwi: ^0.1.0  
```
**http package-**Deals with http requests and responses
```yaml
dependencies:
http: ^0.12.0+1  
```

**YouTube API**:-   [Docs](https://developers.google.com/youtube/v3/docs/search/list)

### Learning resources-
**BLoC**: -   [Tutorial](https://resocoder.com/2019/01/05/flutter-bloc-pattern-tutorial-from-scratch/)

**Dependency Injection** :- [Tutorial](https://resocoder.com/2019/11/25/flutter-generated-dependency-injection-kiwi-tutorial/)

### To-Do: 
Add code for testing!!
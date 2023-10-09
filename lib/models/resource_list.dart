import 'package:pokimans/models/resource.dart';

class ResourceList<ResourceType extends Resource> {
  final int count;
  final String? next;
  final String? previous;
  final List<ResourceType> results;

  ResourceList(this.count, this.next, this.previous, this.results);
}
/// A class that represents a model.
class SampleItemModel {
  const SampleItemModel({
    required this.id,
    required this.name,
  });

  final int id;
  final String name;
}

List<SampleItemModel> allMyCodes = [
  const SampleItemModel(
    id: 1,
    name: "Моя машина",
  ),
  const SampleItemModel(
    id: 2,
    name: "Мой ребёнок",
  ),
  const SampleItemModel(
    id: 3,
    name: "Моя квартира",
  ),
  const SampleItemModel(
    id: 4,
    name: "Мой кошелек",
  ),
  const SampleItemModel(
    id: 5,
    name: "Мой телефон",
  ),
];
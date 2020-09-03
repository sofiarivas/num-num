class Recipe {
  String _name;
  String _description;
  Recipe(this._name, this._description);

  getName() => this._name;
  setName(name) => this._name = name;
  getDescription() => this._description;
  setDescription(description) => this._description = description;
}

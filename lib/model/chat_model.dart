class ChatResponse {
  String? id;
  String? object;
  int? created;
  String? model;
  List<dynamic>? choices;
  Map<String, dynamic>? usage;
  String? completionToken;
  String? totalTokens;

  ChatResponse(
      {this.id,
      this.object,
      this.created,
      this.model,
      this.choices,
      this.usage,
      this.completionToken,
      this.totalTokens});
  ChatResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    object = json['object'];
    created = json['created'];
    model = json['model'];
    choices = json['choices'];
    usage = json['usage'];
    completionToken = json['completionToken'];
    totalTokens = json['totalTokens'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['object'] = object;
    data['created'] = created;
    data['model'] = model;
    data['choices'] = choices;
    data['usage'] = usage;
    data['completionToken'] = completionToken;
    data['totalTokens'] = totalTokens;
    return data;
  }

  static const String uploadServiceFragment = """
      id
      object
      created
      model
      choices
      usage
      completionToken
      totalTokens
  """;
}

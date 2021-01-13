require 'yaml'

def load_library(file_path)
emoticons = YAML.load_file(file_path)

new_hash = {}
emoticons.each do |key, value|
  new_hash[key] = {}
new_hash[key][:english] = value[0]
new_hash[key][:japanese] = value[1]
end
new_hash
end

def get_japanese_emoticon(file_path, emoticon)
result = load_library(file_path)["get_emoticon"][emoticon]
if result
  result
else
return "Sorry, that emoticon was not found."
end
end

def get_english_meaning(file_path, emoticon)
new_hash = load_library(path)
final = new_hash["get_meaning"][emoticon]
if final == nil
  final = "Sorry, that emoticon was not found."
end
final
end

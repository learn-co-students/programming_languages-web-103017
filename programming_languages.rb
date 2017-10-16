require "pry"
def reformat_languages(languages)
new_hash = {}
languages.each do |style, langs|
  langs.each do |lang_name, lang_data|
      new_hash[lang_name] = lang_data
      new_hash[lang_name][:style] = []
  end
end

languages.each do |style, langs|
  langs.each do |lang_name, lang_data|
    new_hash[lang_name][:style].push(style)
  end
end

new_hash
end

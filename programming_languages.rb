require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language_data|
    language_data.each do |language, type|
      new_hash[language]= type
    end
  end
  new_hash.each do |language, data|
    new_hash[language][:style]= []
    if languages[:oo].include?(language)
      new_hash[language][:style] << :oo
    end
    if languages[:functional].include?(language)
      new_hash[language][:style] << :functional
    end
  end
  new_hash
end

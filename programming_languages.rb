require "pry"
def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, style_languages|
    #binding.pry
    style_languages.each do |language, attributes|
      #binding.pry
      attributes.each do |type, type_val|
        #binding.pry
        if new_hash[language].nil?
          new_hash[language] = {}
        end
        if new_hash[language][type].nil?
          new_hash[language][type] = type_val
        end
        if new_hash[language][:style].nil?
          new_hash[language][:style] = []
        end
        new_hash[language][:style] << style
      end
    end
  end
  return new_hash
end

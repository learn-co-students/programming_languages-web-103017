require "pry"


def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, tophash|
    tophash.each do |language,hash|
      hash.each do |key,value|
        if new_hash.key?(language)
          new_hash[language][:style] << style
        else
            new_hash[language] = {key => value, :style => [style]}
        end
      end
    end
  end
  return new_hash
end

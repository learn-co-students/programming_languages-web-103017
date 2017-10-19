def reformat_languages(languages)
  # your code here
    new_hash = {}
    languages.each do |style, value|
        value.each do |lang, type|
            new_hash[lang] = type
            new_hash[lang][:style] = []
            if languages[:oo].include?(lang) == true && languages[:functional].include?(lang) == true
                new_hash[lang][:style].push(:oo, :functional)
            else
                new_hash[lang][:style].push(style)
            end
        end
    end

  return new_hash
end

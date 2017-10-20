def reformat_languages(languages)
  new_hash = {}
  languages.each do |key, value| #oo and {}
    value.each do |language, language_stats| #ruby,js,python,java and {}
      if new_hash.include?(language)
        new_hash[language][:style] << key
      else
        new_hash[language] = language_stats
        new_hash[language][:style] = [key]
      end
    end
  end
  new_hash
end

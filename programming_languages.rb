def reformat_languages(languages)

  new_hash = {}
  languages.each do |style, language_hash|
    language_hash.each do |name, details_hash|
      #set up a new entry in new_hash for the language if not yet there
      if !new_hash.key?(name)
        new_hash[name] = details_hash
        new_hash[name][:style] = []
      end
      new_hash[name][:style] << style
    end
  end

  return new_hash
end

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, language|
    if style == :oo
      language.each do |lang_name, data|
        new_hash[lang_name] = data
      end
    end
  end

  new_hash.each do |lang_name, data|
    data[:style] = [:oo]
  end

  languages.each do |style, language|
    if style == :functional
      language.each do |lang_name, data|
        if new_hash.include?(lang_name)
          new_hash.each do |name, data|
            if name == lang_name
              data[:style] << :functional
            end
          end
        else
          new_hash[lang_name] = data
          data[:style] = [:functional]
        end

      end
    end
  end
  new_hash
end

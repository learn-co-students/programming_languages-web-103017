def reformat_languages(languages)
    new_hash = {}
    languages.each do |style, language|
        language.each do |lan_name, lan_data|
            new_hash[lan_name] = lan_data
            new_hash[lan_name][:style] = []
            new_hash[lan_name][:style].push(style)
        end
    end

    new_hash[:javascript][:style].push(:oo) #takes care of adding "oo" to javascript which already has a functional stylr
    new_hash

end

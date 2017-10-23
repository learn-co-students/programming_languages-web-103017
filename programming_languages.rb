def reformat_languages(languages)
    new_hash = {}
    languages.each do |style, language|
        language.each do |lan_name, lan_data|
            new_hash[lan_name] = lan_data #adds a keys with language name with keys of data
            new_hash[lan_name][:style] = [] #adds a key of :style with a blank array
            new_hash[lan_name][:style].push(style) #pushes the keys from the style 2 levels up to the blank array created in the previous step
        end
    end

    new_hash[:javascript][:style].push(:oo) #takes care of adding "oo" to javascript which already has a functional stylr
    new_hash

end

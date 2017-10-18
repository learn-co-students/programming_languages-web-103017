
def reformat_languages(languages)
 new_hash={}
  languages.each do |key, hash|
    hash.each do |name, type|
      new_hash[name] ||= type
      new_hash[name][:style] ||= []
      new_hash[name][:style]<<key
    end
  end
  new_hash
end


# ||= assignment operator -  if it's non-nil or true

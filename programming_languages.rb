languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

def reformat_languages(languages)
  new_hash = {}
  functional_languages = []
  oop_languages = []
  style_array = []
  oo_hash = {}
  func_hash = {}

  oo_hash.replace(languages[:oo])
  func_hash.replace(languages[:functional]) #reformat a new hash through replace and merge
  new_hash = oo_hash.merge(func_hash)

  languages.each do |key, value|
    style_array << key
    if key == :oo  #sort keys into oo and functional arrays
      value.keys.each do |item|
        oop_languages.push(item)
      end
      #puts oop_languages
    elsif key == :functional
      value.keys.each do |item|
        functional_languages.push(item)
      end
    end
  end

    new_hash.each do |lang, details|
      #puts lang
      if oop_languages.include?(lang) && functional_languages.include?(lang)
        new_hash[lang][:style] = style_array
      elsif oop_languages.include?(lang)
        new_hash[lang][:style] = [style_array.first]
      elsif functional_languages.include?(lang)
        new_hash[lang][:style] = [style_array.last]
      end
    end
    puts new_hash
  return new_hash
end

reformat_languages(languages)

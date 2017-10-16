require "pry"

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

def reformat_languages(input)
  language_list = {}
  input.each do |style, language|
    language.each do |language, type|
      if language_list.include?(language)
        language_list[language][:style] << style
      else
        language_list[language] =
        {
          :type => type[:type],
          :style => [style]
        }
      end
    end
  end
  language_list
end

puts reformat_languages(languages)

# make a list of languages
# keep track of the type, of which there's only one per language
# keep track of the style, of which there can be two per language

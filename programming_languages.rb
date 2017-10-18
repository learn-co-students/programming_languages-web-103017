require 'pry'

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
    languages.each do |style, language|
        language.each do |name, data|
            new_hash[name] = data
            new_hash[name][:style] = []
            new_hash[name][:style] << style
        end
    end
    new_hash[:javascript][:style] << :oo
    new_hash
end

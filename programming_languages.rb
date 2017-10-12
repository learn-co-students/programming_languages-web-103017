require "pry"

def reformat_languages(languages)
  new_hash = {}
  new_style = []
  new_type = ""
  new_language = ""

  languages.each do |style, value|
    if style == :oo
      new_style = [:oo]
      value.each do |language, type|
        new_language = language
        type.each do |key, info|
          new_type = info
          new_hash[new_language] = {
            :type => new_type,
            :style => new_style
          }
        end
      end
    elsif style == :functional
      new_style = [:functional]
      value.each do |language, type|
        new_language = language
        type.each do |key, info|
          new_type = info
          if new_hash.include?(new_language)
            new_style = [:oo, :functional]
          end
          new_hash[new_language] = {
            :type => new_type,
            :style => new_style
          }
        end
      end
    end


  end
  new_hash
  # binding.pry
end

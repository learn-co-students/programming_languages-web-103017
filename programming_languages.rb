#languages = {
#  :oo => {
#    :ruby => {
#      :type => "interpreted"
#    }
#CHANGE TO:
#new_hash= {
#  :ruby => {
#    :type => "interpreted",
#    :style => [:oo]
#  }

def reformat_languages(languages)
 new_hash={}
 languages.each do |key, value|
   new_hash<<value
    new_hash[:key]={style:"#{languages[0]}"}
 end
end

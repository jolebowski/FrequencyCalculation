text = "Un homme nourrissait une chèvre et un âne. Or la chèvre devint envieuse de l’âne, parce qu’il était trop bien nourri. Et elle lui dit : « Entre la meule à tourner et les fardeaux à porter, ta vie est un tourment sans fin, » et elle lui conseillait de simuler l’épilepsie, et de se laisser tomber dans un trou pour avoir du repos. Il suivit le conseil, se laissa tomber et se froissa tout le corps. Son maître ayant fait venir le vétérinaire, lui demanda un remède pour le blessé. Le vétérinaire lui prescrivit d’infuser le poumon d’une chèvre ; ce remède lui rendrait la santé. En conséquence on immola la chèvre pour guérir l’âne.
Quiconque machine des fourberies contre autrui devient le premier artisan de son malheur."

#create a hash for words 


frequency = Hash.new(0)
words = text.downcase.tr('.,', '').split(' ');
#puts words.inspect

words.each do |w|
    frequency[w] += 1
end

#puts frequency.inspect

#pour afficher proprement 
frequency = frequency.sort_by do |w,c| c end
frequency.reverse!
#puts frequency.inspect
first = frequency.first
puts "le mot qui apparait le plus souvent est ; #{first[0]} car il apparait #{first[1]} fois"
=begin frequency.each do |w|
    puts "Le mot \"#{w[0]}\" est présent #{w[1]} fois"
end 

form_params = {}
test = ['tid', 'tid','qid', 'pri', 'sec', 'to_u', 'to_d', 'from', 'wl']
test.each do |v|
    puts "#{v}"
    if form_params[v]
        form_params[v] += 1
    else 
        form_params[v] = 1
    end
end
puts form_params.inspect
=end
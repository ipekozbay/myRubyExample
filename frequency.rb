
words = %w[For smokers who are under increased pressure to
  give up smoking, one of the easiest is that
  quitting smoking makes people more likely to put on
  weight. incentives attempts purposes excuses features]

word={}

words.each do |k|

  if word.key?(k)
    word[k]+=1
  else
    word[k]=1

  end
end

c= word.sort_by {|k ,frekans | frekans}
print c 

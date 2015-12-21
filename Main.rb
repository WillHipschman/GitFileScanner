@regex = /[a-z]+[0-9]+[a-z]+[0-9]+/

def PrintIfMatch(line)
    if line =~ @regex
        puts "MATCH IN: #{line}"
    end
end

ARGF.each{|line| PrintIfMatch(line)}
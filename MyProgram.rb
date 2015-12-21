
@regex = /a|b/

def PrintArgs(args)
    if args =~@regex
        puts "String mentioned mentioned #{args}"
    end
end

# Call args
puts PrintArgs("a")
puts PrintArgs "b"
puts PrintArgs "c"
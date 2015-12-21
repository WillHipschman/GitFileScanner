class CLI
    @@usage = "usage: Install.rb <repository path>"
    
    public
    
    def CLI.PrintUsage(stream)
        stream.puts(@@usage)
    end

    def CLI.Quit(stream, message)
        stream.puts(message)
        CLI.PrintUsage(stream)
        abort
    end
end
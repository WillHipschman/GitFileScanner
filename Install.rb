
@usage = "usage: Install.rb <repository path>"

def PrintUsage(stream)
    stream.puts(@usage)
end

def IsValidGitFolder(path)
    gitFolder = path + "\\.git"
    return File.exist?(gitFolder)
end

def Quit(message)
    $stderr.puts("#{path} is not a valid git repository.\n\n")
    PrintUsage($stderr)
    abort
end

def Install(path)
    if File.exist?(path)
        if IsValidGitFolder(path)
            puts("SUCCESS")
        else
            Quit("#{path} is not a valid git repository.\n\n")
        end
    else
        Quit("The path #{path} does not exist.\n\n")
    end
end

if(ARGV.length != 1)
    Quit("Invalid number of arguments.\n\n")
end

Install(ARGV.first)
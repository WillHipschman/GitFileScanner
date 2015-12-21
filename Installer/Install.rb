require_relative "CLI"
require_relative "../Util/GitUtil"
require_relative "../Util/Constants"

def Install(path)
    if File.exist?(path)
        if GitUtil.IsValidGitFolder(path)
            GitUtil.WriteGitAttribute(path, Constants.PoolBoyFilterAttribute)
        else
            CLI.Quit($stderr, "#{path} is not a valid git repository.\n\n")
        end
    else
        CLI.Quit($stderr, "The path #{path} does not exist.\n\n")
    end
end

if(ARGV.length != 1)
    CLI.Quit($stderr, "Invalid number of arguments.\n\n")
end

Install(ARGV.first)
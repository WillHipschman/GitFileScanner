class GitUtil

    def GitUtil.IsValidGitFolder(path)
        gitFolder = File.join(path, ".git")
        return File.exist?(gitFolder)
    end

    def GitUtil.WriteGitAttribute(path, attribute)
        gitAttributesPath = File.join(path, ".gitattribute")
        
        if(!GitUtil.GitAttributeExists(gitAttributesPath, attribute))
            File.open(gitAttributesPath, "a") {|file| file.write(attribute)}
        end
    end

    def GitUtil.GitAttributeExists(path, attribute)
        found = false
        if File.exist?(path) 
            File.foreach(path) do |line| 
                if attribute == line 
                    found = true
                    break
                end
            end
        end
        
        return found
    end
    
end
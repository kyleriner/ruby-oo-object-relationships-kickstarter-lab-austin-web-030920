require 'pry'
class Backer
    attr_accessor :name
    def initialize(name)
        @name = name
        
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        self_backed_projects =  ProjectBacker.all.select { |projectbacker| projectbacker.backer == self}
        return self_backed_projects.map { |self_backed_projects| self_backed_projects.project}
    end
end
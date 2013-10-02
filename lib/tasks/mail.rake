namespace :mail do
  desc "TODO"
  task :project_status => :environment do
  	Project.all.each do |project|
      UserMailer.project_status(project).deliver
    end
  end

end

require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

desc "Ejecutar las espectativas de la clase Alimento"

task :spec do

  sh "rspec -I. spec/lista_d_spec.rb"

end





desc "Ejecutar con documentacion"



task :doc do



  sh "rspec -I. spec/alimento_spec.rb --format documentation"



end






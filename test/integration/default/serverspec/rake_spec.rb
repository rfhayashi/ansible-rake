require 'serverspec'

# Required by serverspec
set :backend, :exec

describe command('rake') do
  its(:stderr) { should match /No Rakefile found/ }
end
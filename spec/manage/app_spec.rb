require 'spec_helper'

describe package('ansible') do
  it { should be_installed.by('pip') }
end

describe package('tomahawk') do
  it { should be_installed.by('pip') }
end

describe package('capistrano') do
  it { should be_installed.by('gem') }
end

describe package('Cinnamon') do
  it { should be_installed.by('cpan') }
end

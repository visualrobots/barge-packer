require 'spec_helper'

describe file('/etc') do
  it { should be_mounted }
end

describe file('/mnt/sda1') do
  it { should be_mounted }
end

describe file('/mnt/data') do
  it { should be_mounted }
end

describe file('/var/lib/docker') do
  it { should be_linked_to '/mnt/data/var/lib/docker' }
end

describe file('/var/log/docker') do
  it { should be_linked_to '/mnt/data/var/log/docker' }
end

describe file('/home') do
  it { should be_linked_to '/mnt/data/home' }
end

describe file('/opt') do
  it { should be_linked_to '/mnt/data/opt' }
end

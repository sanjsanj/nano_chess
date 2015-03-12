require 'rspec-its/version'
# require "~/home/action/.gem/ruby/2.1.1/gems/rspec-its-0.0.1.pre/lib/rspec-its.rb"
require_relative "../lib/nanochess.rb"

describe Position do
  its(:board) { should == %w(-)*20 }
  its(:turn) { should == :white }
  its(:ep) { should be_nil }
  its(:castling) { should == %w(K Q k q) }
  its(:halfmove) { should == 0 }
  its(:fullmove) { should == 1 }
end
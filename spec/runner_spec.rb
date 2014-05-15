require_relative 'spec_helper'

describe MrsWatson::Runner do

  let(:io) { MrsWatson::IO.new() }
  let(:plugin_chain) { MrsWatson::PluginChain.new() }
  let(:runner) { MrsWatson::Runner.new(io, plugin_chain) }
  # let(:mid_input) { "test.mid" }
  # let(:wav_input) { "test.wav" }
  # let(:other_input) { "test.txt" }

  describe "#new" do
    it 'creates a Runner object' do
     runner.should be_an_instance_of MrsWatson::Runner
    end
  end

  # describe "input method arguments" do
  #   it 'can take .mid input' do
  #     expect { runner.add_input(mid_input) }.to_not raise_error
  #   end

  #   it 'can take .wav input' do
  #     expect { runner.add_input(wav_input) }.to_not raise_error
  #   end

  #   it 'raises an error for non-valid input' do
  #     expect { runner.add_input(other_input) }.to raise_error
  #   end
  # end

  describe "output method arguments" do
  end

  describe "valid chain order" do
  end

end

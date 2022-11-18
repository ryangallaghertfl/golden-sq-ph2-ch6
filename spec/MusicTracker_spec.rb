require "music_tracker"

RSpec.describe MusicTracker do
    
    it "initialises with an empty list" do
      musictracker = MusicTracker.new
      expect(musictracker.list_tracks).to eq []
    end

    it "adds a song title and artist and it lists the added track" do
        musictracker = MusicTracker.new
        musictracker.add("Sorrow", "David Bowie")
        expect(musictracker.list_tracks).to eq [{"Title" => "Sorrow", "Artist" => "David Bowie"}]
    end

    it "adds a song title and artist and it lists the added track" do
        musictracker = MusicTracker.new
        musictracker.add("Sorrow", "David Bowie")
        musictracker.add("Heroes", "David Bowie")
        expect(musictracker.list_tracks).to eq [{"Title" => "Sorrow", "Artist" => "David Bowie"}, {"Title" => "Heroes", "Artist" => "David Bowie"}]
    end

    context "given an empty string for a parameter" do
        it "#add() fails" do
            musictracker = MusicTracker.new
            expect{musictracker.add("", "David Bowie")}.to raise_error "Error: Title cannot be empty string."
            expect(musictracker.list_tracks).to eq []
        end

        it "#add() fails" do
            musictracker = MusicTracker.new
            expect{musictracker.add("", "David Bowie")}.to raise_error "Error: Title cannot be empty string."
            expect(musictracker.list_tracks).to eq []
        end

        it "#add() fails" do
            musictracker = MusicTracker.new
            expect{musictracker.add("TVC-15", "")}.to raise_error "Error: Artist cannot be empty string."
            expect(musictracker.list_tracks).to eq []
        end
    end
end
use_bpm 170

define :clean do
  
  with_fx :reverb do
    clean_chords = [
      chord(:A, :minor),
      chord(:D, :augmented),
      chord(:G, :major7),
      chord(:E, :minor),
      chord(:A, :minor),
      chord(:Bb, :augmented),
      chord(:G, :major7),
      chord(:E, :minor),
      chord(:Gb, :minor7),
      chord(:B, :minor7),
      chord(:E, :minor7),
      chord(:B, :min),
      chord(:Bb, :dim)
    ]
    live_loop :loop_clean do
      use_synth :organ_tonewheel
      
      for i in clean_chords
        play i
        sleep 1.5
      end
    end
  end
end

define :test do
  use_sample_bpm :loop_amen
  
  with_fx :rlpf, cutoff: 10, cutoff_slide: 4 do |c|
    live_loop :dnb do
      #sample :bass_dnb_f, amp: 5
      sample :loop_amen, amp: 5
      sleep 1
      control c, cutoff: rrand(40, 120), cutoff_slide: rrand(1, 4)
    end
  end
end

in_thread do
  clean
end

live_loop :drums do
  with_fx :reverb do
    sample :drum_heavy_kick
    sleep 2
    sample :drum_snare_hard
    sleep 2
    sample :drum_heavy_kick
    sleep 2
    sample :drum_snare_hard
    sleep 2
  end
end

# Greyl - Planetarium

# F#m Bm7 E A
# Edim F# A?
# Bb dim A7

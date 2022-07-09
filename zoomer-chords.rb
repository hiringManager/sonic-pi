use_bpm 80
use_synth :kalimba
# Song: fx Shadow
# VI +V I7 III
define :shadow do
  
  with_fx :echo do
    shadow_chords = [
      chord(:A, :minor),
      chord(:D, :augmented),
      chord(:G, :major7),
      chord(:E, :minor),
      
      chord(:A, :minor),
      chord(:Bb, :augmented),
      chord(:G, :major7),
      chord(:E, :minor)
    ]
    live_loop :loop_shadow do
      use_synth :kalimba
      
      for i in shadow_chords
        play i
        sleep 2
      end
    end
  end
end

# Zoomer Progression
# IV V III VI
define :zoom do
  zoomer = [
    chord(:F, :major),
    chord(:G, :major),
    chord(:E, :minor),
  chord(:A, :minor) ]
  
  for i in zoomer
    play i
    sleep 1
  end
end


in_thread do
  shadow
end

live_loop :drums do
  with_fx :reverb do
    sample :drum_heavy_kick
    sleep 1
    sample :drum_snare_hard
    sleep 1
    sample :drum_heavy_kick
    sleep 1
    sample :drum_snare_hard
    sleep 1
  end
end


live_loop :highhat do
  sample :drum_cymbal_closed
  sleep 1
end

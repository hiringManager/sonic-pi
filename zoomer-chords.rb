use_synth :kalimba

""" Song: fx Shadow """
""" VI +V I7 III """

shadow = [
  chord(:A, :minor),
  chord(:D, :augmented),
  chord(:G, :major7),
  chord(:E, :minor),
  
  chord(:A, :minor),
  chord(:Bb, :augmented),
  chord(:G, :major7),
  chord(:E, :minor)
]

""" Zoomer Progression """
""" IV V III VI """

zoomer = [
  chord(:F, :major),
  chord(:G, :major),
  chord(:E, :minor),
  chord(:A, :minor)
]

for i in shadow
  play i
  sleep 1
end

for i in zoomer
  play i
  sleep 1
end

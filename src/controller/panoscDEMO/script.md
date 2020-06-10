## NB 1: Simple simulation

This is a demonstration of simulating and analysing serial crystallography data,
to show a use case for Jupyter notebooks in the PaNOSC project
- Photon and Neutron Open Science Cloud.

Serial crystallography involves shooting tiny crystals of a sample into an X-ray beam,
and capturing diffraction patterns from them with a detector like an X-ray camera.
In many of the thousands and thousands of images, the beam won't even hit a crystal,
and when it does, that crystal could be at any angle. There could even be more than one!
So processing the data requires both computational power and specialised code.

If we want to try out some of that code, we can start by giving it simulated data.
In a simulation, we can ensure that every frame has a clean diffraction pattern from
a single crystal, so it's easier to analyse than data from a real experiment.
You might do this to learn to use an analysis tool, or as a test case for analysis code
you're developing.

For this simulation, we're using lysozyme, a small enzyme that's often used as a test case
for X-ray crystallography. Its structure is available on PDB, the Protein Data Bank,
and that will be an input for our simulation.

The first few code cells set things up for the simulation. We're using a framework called
*SimEx*, which is also being developed as part of PaNOSC, in work package 5.

Now we start to configure the details of the simulation. First, the X-ray beam.
This is where we set things like the beam diameter and the photon energy.
Then the detector. Here we're defining a simple detector with one panel, 1000 by 1000 pixels.

Then we add the sample details. You can see the PDB ID of our protein,
and we're asking for each crystal to be 100 nanometres.
For now, we're disabling almost every possible complication.

Finally, let's run the simulation and have a look at the result.
To keep this demo quick, we're only generating two frames now.

This is one frame from our virtual detector.
Those bright spots arranged in arcs are what we're expecting,
and they'll be the starting point for the analysis code.
Let's switch to the analysis notebook now.

## CrystFEL notebook

I'm using some data we generated earlier for the analysis, to save time.
We now have 200 frames, from the same 1000 by 1000 pixel detector.
The pattern is different - this crystal was at a different angle -
but we've still got bright spots arranged in arcs.

We're doing the analysis with 'indexamajig', part of the CrystFEL suite of tools.
Let's start it running. We're taking advantage of the powerful computer we're
accessing to run on 20 cores, so it's done in just a few seconds. And it's
found crystals in all 200 images.

Indexamajig records its output in a *stream file*. We can read that and examine the
peaks it identified. In the first frame, it's found **N** peaks.
If we draw them as small circles on top of the image, we can see it's found many but not
all of the bright spots. We could try to adjust the parameters to find more, but let's
keep going.

For each frame, indexamajig also estimates the size and shape of the 'unit cell',
the repeating unit in the crystal.
This gives us three lengths (a, b and c) and three angles (alpha, beta and gamma).
We've got 200 estimates of each, which we'll plot as histograms.
You can see that the estimates cluster tightly around specific lengths, and angles of 90 degrees,
which indicates that we're getting good results in this ideal case.

We can also fit a normal distribution for each parameter,
to get numbers which could be used in further analysis.
But now let's see what happens when we introduce some complications.

## NB 2: Adding noise

We're starting with the data we generated in the first simulation.
We're just going to pick two random pixels in each image and set them
to large values. This could represent equipment faults.
Here are the bad pixels for this frame highlighted in red.

This example highlights what we can do with notebooks.
We have stepped outside the simulation framework to modify
the data directly with just a few lines of code.
So we're not restricted to the options that someone else
planned for: we can easily do something different.

## CrystFEL notebook

Now back to the analysis.
We're running the same steps as before, but now with the noisy data.
The peaks it's found look just like before.

But what about the unit cell parameters?
These look much messier. There's still a clear peak on each histogram
where it's getting the right answer, but there's also a scatter of results
with very different values.
Even small changes to the data are already starting to affect our results.

## NB 3: Multiple panels

For the last part, we'll make one part of the simulation a bit more realistic.
This is the AGIPD 1M detector, which is used at European XFEL for serial
crystallography experiments, and this is an image from it.
You can see that it's made up of 16 rectangular modules with gaps between them,
and in fact each module has several tiles.

We'll set up the simulated beam as before.
But now we'll generate an AGIPD geometry - a specific positioning of those 16 modules.
We'll save that to a file and tell SimEx to use that for our simulated detector.
Now we'll run the simulation.
And now the output has gaps: we can only see the parts of the image where the
detector tiles are.

## CrystFEL notebook

Here's the analysis notebook again.
Let's start running indexamajig.
It's slower now, because we're giving it a more complicated problem.

While it's running: these code cells starting with an exclamation mark
contain shell commands.
It's a very convenient way to mix Python code with external programs
like indexamajig.

Now it's finished, and here are the peaks it found in one frame.
And here are the unit cell estimates.
We didn't add any noise for this simulation, but like the previous example,
a significant minority of the estimates are well out.
So using a multi-panel detector like AGIPD is likely to affect our analysis.

We've shown three rounds of simulation and analysis.
You could easily go back and forth many more times,
introducing different complications in the simulation and finding how to
adjust the analysis to cope with them.
This flexibility is the real power of notebooks,
along with remote access to a powerful computer to run simulation and analysis quickly.

# Gaps in Data Integration and Scaling

This kind of became "Status and limitations of live data monitoring"

Panel -

- Tom White
- James Bielsten-Edmands
- Iris Young
- Artem Lyubimov

## Opening Statements

### Iris

We have 2 x XFEL, 2 x SR - will focus on XFEL

Data reduction - still have a variety of approaches and a set of constraints - would like to focus on the live data monitoring - this is critical to success - sample / crystals / whatever in the beam and indexing and integration -> merging. We need to understand any problems as quickly as possible.

cctbx.xfel.merge can keep up pretty much in real time - look at difference maps (which should not be in google drive) - overall it works well.

### James

Yesterday had a good discussion amongst developers - predicting stills is hard - we are getting better and new ideas are coming along. SR using SSX as well as XFEL has brought more scientist-programmers in - simulation approaches are improving modelling so getting better results. We understand what we need to do to solve the problem. Healthy competition will help us to deliver more accurate processing to our users.

The data quality issue is distinct from the fast feedback - and a growing problem as the data rates increase. This is the interface between the user and experiment, and critical to users. A human as well as technical challenge - giving users the information they need in a timely manner.

Portability is hard.

Would like to hear from users what they need to help them make the decisions in live experiments.

### Tom

Tom presents slide on live feedback at DESY / Petra III / P11. 2 x CrystFELs - different things - one for online processing which reads data from stream as “good” processing and another which samples data for indexing / live feedback results. Can read from monitor interface on Eiger. Uses no prior unlike the good one. Fast one does not integrate, only cares about spot positions, and can be “lossy”

This is a sane split because it is a pragmatic split for beamline users. ASAP system makes this work. Outputs files at the every end e.g. could only output good indexed frames as an option to HDF5. What opportunities will arise when no data related costs to doing the experiment - ligand experiment - bind or no? Could reduce to a bit?

Partiality modelling - have not much been working on - not working on model itself, more on testing - hoping to pick this up again.

### Art

Working on similar project to the one Tom presented - live feedback for the experiment. Completely agree with Iris that this is one of the mos important things during a serial experiment. Also found out that this is useful for rotation data - users asked for it. Users want to know if the sample is dying in the beam, for example. For both processing and monitoring it’s about optimisation. Wanting to operate at 100% duty cycle frame rate - the faster this goes the less useful eyes and brains are - need to deliver simple live information so users can make choices. Not all of them need to be split-second.

Much room to optimise dials spot finder - can make it 5x faster - it is not glamorous but it is one of the key aspects toward coping with increased data rates. Derek working on new methods too. Do we need live processing? No, we need live analysis. Added a NN which detects multiple lattices. Users can waste a lot of time on useless data which won’t refine. Red flags needed to warn a user which may not break processing but indicates broken data.

### General Discussion

Derek - 70% live processing, 30% modelling. What would you like to see more of which is not currently there. What about complicated experiments? X-ray pump probe? We have other data streams. Is it easy to imagine adding support for other detectors to the framework? Total intensity on the `<xtcad?>` on the LCLS.

Iris - add right dependencies / columns to MySQL database -> use that. It is kinda modular. Have done this before for specific types of experiment.

Asmit - regarding <xtcad?> - beamline scientist can also do online monitoring with internal system, get idea whether it is working or not.

Tom - in our system we can do that too (ASAP). ONDA can already do this.

Derek - “small data” - monitor sensors to HDF5 file and plot - can we save other images through OMN? Tom: yes.

Art

In addition to modular; this has been in things like Blue Ice since forever? Users focus on 1, 2 of these and lose track of others. As experiment gets more complicated, streamline presentation so we carry information so users can absorb in real time. TMI.

Cynthia

In mixing experiment following spectrum, see if you get signal from channels you would expect, to see if the change you want is actually happening rather than just lovely diffraction. We have lovely and useless Laue data.

Dan

Live feedback which is comprehensible - keeping track of the jet - live radial average of the detector image. Question for Tom - 2 instances of pipeline - how tight is the coupling between the picture and where it is installed? Is it portable?

ASAP is DESY specific - developed by IT department - may be interested in sharing but they don’t have the resource. You also have to decide what format the data are in the pipes.

“Standards are an issue”

Zero-MQ - not so good for reliable - but it is a transport protocol.

Can I install monitors? Aaron happy to help install XFEL GUI. We can use supercomputers etc. Requires MySQL servers etc.

Graeme - you need the HARDWARE behind the scenes to actually make this possible.

Aaron - we have all the spells you need for slurs based systems - you can customise as needed.

Derek - XFEL GUI can use NERSC

James BE - good it works in all XFELs - what about synchrotrons? Aaron - you can point XFEL GUI at a directory as it goes and run SLURM. This is not the best way to do this. This should be in SynchWeb!

Art - scale will remain and grow - this will never work on a laptop? We go towards analysis and red flags rather than processing.

James BE - live processing or reprocessing? Reprocessing on laptop - 1,000 frames should be fine? For live processing sure. Fixed targets on laptops should be fine even live? The firehose tho - 120 / 500 Hz etc. to 10,000s of images. If you look at the data you have work to do. As things get faster and larger do we need full processing or can we tolerate some delay? We should listen to users?

Tom - what users want - most installations are on mac laptops - though most processing is performed on central systems. Is something to be said. Just the hits is useful for learning. This lead us to support macOS with crystFEL. Lag? Overnight used to be useful. Now, we aspire for hours.

Kara - OHM for solution scattering was super useful - radial profile averaging etc. so we can see a lot of other information - spots / no spots support useful - seeing differences etc. critical

Asmit - as a user something useful is making sure the experiment is gonna work is spot separation e.g. multiple lattices and then he background scatter - this always useful

Graeme - system - what should be standard - minimum set of information - radial profile, spots finding, separation histogram

Fabio - auto masking ongoing work

Iris - multiple lattices / background could be integrated into the GUI - most of the GUI we wrote at the beamline during the beam time when we realised we needed things

Dan - 2 different live feedback - real time vs. slower for MTZ files - different things

Derek - transition to data processing more generally - Graeme asks for better / cheaper algorithms - are there steps in the data reduction pipeline which will benefit from new algorithms

Dan - if data lands on disk 5 minutes later it doesn’t matter? Nick - or even 5 minutes after collection finished?

Art - this was a point of frustration - only bring able to do anything once runs complete - need to do short runs for live feedback. Some latency is acceptable if everything is constantly 20s late. Decisions will have a time period where the small latency makes no differences. This also points to hardware and configuration issues as Graeme points out - which will become more of an issue with advances e.g. minutes means thousands or millions of samples.

Aaron - pushing software to the edge because experiments are rare. PI standing behind wanting results 10 minutes before available - so everything in XFEL GUI. Synchrotron will be fine.

Art - even in rotation crystallography - which is mature - doing X-ray grid scans - we are finding things are useful for everything and users were surprised? Multiple small wedges benefit from live immediate feedback.

Graeme - reinforces point about same results with fewer cycles always useful.

Dan - hot spots move around, depend on installation etc.

Graeme - compare a clean implementation of your core algorithm.

Tom - optimisation was about removing facepalms - for example expensive ways of masking pixels so clean them up (lab frame vs. pixel regions) - we still have not got started, only removed a few really stupid things.

Nick - sometimes our costs are in locked in systems which are hard to modify because they are baked in (dxtbx, dials) - learn to live with things being slow then rewrite and find it 100x faster. Hard to merge the speedups back. Recalculating penetration for every corner of every pixel.

Derek - 20 minutes left - identify gaps. We know our models for prediction are somewhat lacking. James? When would it be worth having better models which slow things down? Graeme - a program which gives you a fast but wrong result is not useful.

James - a rough but useful fast result is useful for live feedback, but slow but best may be useful later. Planning to make the quick versions more reliable.

Art - users then ask for the fast processing results - but this is not for using! Accurate right away more useful.

Iris - generally we have too much data to run in real time - so we work through 10% live then the rest off site later. Sampling is OK.

Aaron - good processing across bay at NERSC only 5 minutes late! Because amazing wires.

Tom - why are you iterating data processing? We used to clog cluster with multiple versions of jobs - we should know the right settings / geometry / … so you don’t need to do this? So you concentrate on calibration before rather than after the experiment.

Aaron - more the case for surprising unit cells and so on where we find things are different to what we expect so we have to re-do the processing.

Tom - is there another way of doing this?

Aaron - I wanna show slide!

Iris - reprocessing about manual problem solving - hard to automate.

Kevin - how often does an MTZ from beam time get published? Iris - we almost always reprocess but the beam time MTZs are pretty good. But we know the data are poor compared to what they should be? Is there space for better algorithms which are not targeted for live feedback.

Dan - accurate measurement of structure factors - size of problem is ~ 10% in terms of inaccuracy of intensity measurements so lost for protein, there for small molecules. What do we do is research.

Aaron has found his slide.

Kevin - would posit that much of the research is about partiality, and this with the spectral properties of FEL beams. Would like to see more black models which use ML to discover the physics for a given data sets. Scaling overdetermined for rotation data, why not stills? Just use ML to do it?

Dan - if 10% added in quadrature - and we don’t notice - are we wasting our time for routine experiments?

Kevin - no - differences are << 10% so this matters - for one off structures does not matter so much but for interesting experiments will matter more

Aaron - shows a slide with batch reprocessing and batch reservations one unit to collect, one to process, some spare to batch reprocessing. Building things to solve this now.

Jeney reminds of opinion of serial is > 1 crystal

Iris - we don’t know how much differences between crystals or between model and crystal data

Dan - should not be much variance

Graeme - small molecule crystals don’t merge. Drops mic.

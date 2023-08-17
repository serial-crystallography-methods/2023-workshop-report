# Gaps in Data Integration and Scaling

Derived from the [raw transcript](./TRANSCRIPT.md) recorded possibly unreliably during the session, by Graeme.

## Observation

This session evolved into a discussion of the status and limitations in live data monitoring (e.g. live data analysis) which reflects the benefits of active user engagement in a workshop: we can pivot to more useful topics.

## Panel

- Tom White
- James Bielsten-Edmands
- Iris Young
- Artem Lyubimov

## Opening Comments

Iris opened with an observation that we have two synchrotron associated folks, two XFEL in the panel, so would represent the XFEL perspective. Iris highlighted the importance of live data analysis to provide feedback as data are being acquired. In particular, the alignment of sample delivery system and quality of the data produced by the crystals (are they diffracting? isomorphous?) is important as well as prompt indications of any issues. One rate limiting step with this can be the merging which, with `cctbx.xfel.merge` can work in pretty much real time so that looking at the meaningful scientific data (e.g. a difference map) close to the point of acquisition is possible and valuable for the user to guide the experiment.

James opened with a reflection on the prior day's discussion amongst developers, that the prediction of still shot diffraction images continues to be a challenge, though we are (as a community) making progress on this and new ideas are appearing. Including synchrotron-based experiments as well as XFEL has brought in more "scientist programmers" [^1] and in particular simulation-based approaches to inspecting the data are showing promise. James then commented that we _do_ have a clear idea of what the problem is, and this is shared, but the solution is currently ill-defined and thus some healthy competition is valuable. James then went on to discuss how the "data quality" issue is also distinct from fast feedback - and a growing problem with new instruments and light sources. Presenting interfaces to the user which give a clear indication on how their data look is critical, but making such a system portable presents specific challenges.

Tom opened with a slide presenting the live feedback set-up at DESY / Petra III / P11 where _two_ CrystFEL instances are run, one to present live feedback by sampling from the data stream to give live feedback results, and the other (which may lag) for providing "good processing" directly from the data stream. The live feedback does not require prior knowledge e.g. the unit cell etc. and does not attempt to integrate the data - the focus is only on spot finding and indexing. For the users this distinction is viewed as being a pragmatic compromise. The DESY [ASAP](https://asapo.pages.desy.de/asapo/docs/overview/) system is integral to making this work, and offers e.g. the choice of saving "good indexed data" to the final HDF5 files. Tom has not much been working on the partiality problem but recognises it and hope to pick up again.

Art opened with a recognition that he has worked on a similar system to the one presented by Tom, to give live feedback to the experiment, and agreed with Iris over the importance of this for the user in a serial experiment. It was also found to be useful for rotation data, to give an early indication of sample decay to the user [^2]. For both processing and live monitoring it is about optimisation, since we want to operate the detector at 100% capacity and have the analysis keep up. The faster the data collection, the less useful the user is in the data inspection process. There is a lot of room to optimise - a factor of five - which is not glamourous work but is essential to keeping up with increased data rates. Derek is also working on new methods. Do we need live processing? No, but we need some live analysis. We are in the process of developing a neural network to indentify when there are multiple lattices, since users can waste a lot of time on data which won't process - early red flags of great value.

## Specific Questions

To Tom: your set up, is it portable? Not currently - ASAP is developed by the DESY IT group but they don't have resource to support other facilites at this time. They could be interested in sharing? This also requires that you define your data formats as in what messages are sent over the wire. Response to this was a wider commentary about "standards are an issue" - ASAP uses zeroMQ which is not ideal but (Ed: _with careful tuning and good understanding_) is reliable and is a standard transport protocol. (Ed: also noteworthy that this is the chosen protocol for DECTRIS Eiger.)

## Discussion

*Editor's warning:* the discussion was wide ranging, making it hard to faithfully record.

The discussion opened with a review of what the user needs, starting from the ideas presented by panel members with a focus on the tools offered by XFELs, in particular LCLS and EU-XFEL. Extending the online monitoring to include other sources of data, for example fluorescence spectra and other detectors, was viewed as being particularly valuable with discussion of how this can be achieved by an instrument scientist with a detailed knowledge of the experimental hardware - an example of seeing changes in specrtal data alongside nice diffraction data can be used to indicate that something actually happened to the sample, so you are not just recording a nice series of resting state data - the case raised was "lovely, but useless" Laue diffraction data.

Making sure that the live analysis gave _useful_ feedback was a second theme, e.g. ensuring that it is timely and easy to interpret and act on, in the stressful environment of an ongoing experiment.

The discussion then pivoted to the XFEL GUI - assistance was offered to help install, but this _does_ require supercomputer (Ed: HPC, in general) and MySQL servers to be useful, as well as (to state the obvious) hardware to ensure that the data can flow. The developers have "SLURM spells" which can be customised as needed, and the system can use e.g. NERSC if you have an allocation, and you are running at LCLS. Running offline or at a synchrotron facility still needs a corresponding amount of compute resource to be useful, and running on the command line may not be the best way to do this, e.g. the use of SynchWeb and ISPyB to provide input to and observe the running of automated processing systems.

We pivot back to the discussion of live feedback, and discuss realistic goals - live full analysis from an experiment will probably exceed the capability of a laptop, but we need to keep in mind what the actual goals are here - if we want to give an indication of the quality of the data we don't need full analysis, which will allow something useful to be achieved with far smaller resources. There was some discussion that users _want_ to run CrystFEL on laptops, e.g. MacBook, but after the experiment, using facility systems for live processing. In the general sense, if you have a modest data set (Small _N_ thousands of hit frames) running on a laptop could be reasonable. This is particularly useful for teaching.

The use of live feedback for _not_ X-ray diffraction was then picked up, and ?OHM? for live analysis of SAAXS data by computing live radial averages was very useful. Averaging this and other information (spots? no spots? etc.) useful for feedback about alignment of stream. Also, knowing more about the spot separation is useful for an indication of multiple lattices (Ed: probably more of a problem for fixed targets.) Pulling this together starts to suggest a set of "standard tooling" we could provide at facilities i.e.

- live averaged radial profile
- spot counts
- separation histograms

Integrating these into the XFEL GUI in CCTBX is perfectly doable, apparently, and everything which is in there was "added because it was needed as part of an ongoing experiment" (which suggests a reactive development process rather then strategic, which is useful for getting science done but can build up technical debt unless carefully managed - Ed.) - again the _nature_ if the feedback was visited, in that MTZ files from which difference maps can be calculated are very useful, but not more useful than e.g. hit rates. Topic of modifying algorithms to have a lower computational requirement (e.g. make them more efficient; optimise) was raised, as a way of getting more from the hardware we have - there was some discussion of whether the existing plan of "throwing more cores at it" is sustainable. Some of this optimisation can be achieved by simply removing obvious "face palms" - a worthy goal, but sometimes these are baked into the architecture (a particular issue now in DIALS).

Practicalities of live feedback was then picked up, e.g. if it takes 5 minutes for a finalized data set to appear on disk, then feedback faster than this is an unreasonable goal. Latency remains an issue - which brings us around to the view raised earlier of looking at the _system_ not just the software. Likely to increase as a challenge with new instruments, source upgrades, better sample delivery methods. Reserving space in HPC is useful, because you can bake in some overhead to allow revisiting data while new processing happens.

At this point the _gap analysis_ nature of the discussion was brought back to focus - are methods which are fast but imprecise useful? If the results are still meaningful, and the data revisited later, yes. But the latter is problematic since often users will just take what is there, so making the processing good from the outset is important. This was also reflected in e.g. handling the calibration procedures, and trying to get this right from the start rather than repeatedly re-processing data. Is it perhaps more useful to do correct processing on a random subset of the data to give quality indications? Re-visiting the data could be needed if e.g. multiple populations of unit cells found. Reprocessing data often about manual problem solving as well, which can change the requirements. Often this will occur after the experiment. Coming back to the gaps, the principle source of innaccuracy was spot prediction and "partiality" (or reflection dependent scale factors) and fixing this is research. Suggestion to consider black-box ML models to estimate the partiality? If the scaling is indeed overdetermined then this should be OK.

Bringing into brief focus the issue for chemical crystallography was interesting - the small number of reflections perhaps adjusts the extent to which prediction is an issue? No clear conclusion.

## Gaps / Conclusion

Gaps / work needed -

- understanding why "predicting stills is hard" and ultimately resolving this would be a great improvement
- standard live analysis across facilities - not uniform implementation, but conceptually similar
- reducing CPU / memory cost of processsing
- extending live analysis to incorporate other types of data

[^1]: the stenographer appreciates this choice of language.
[^2]: GW commentary: we have had _per image analysis_ in place for a similar use case for several years at Diamond, but this does not attempt to index the data.

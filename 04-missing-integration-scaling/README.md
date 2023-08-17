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

Iris opened with an observation that we have two synchrotron associated folks, two X-FEL in the panel, so would represent the X-FEL perspective. Iris highlighted the importance of live data analysis to provide feedback as data are being acquired. In particular, the alignment of sample delivery system and quality of the data produced by the crystals (are they diffracting? isomorphous?) is important as well as prompt indications of any issues. One rate limiting step with this can be the merging which, with `cctbx.xfel.merge` can work in pretty much real time so that looking at the meaningful scientific data (e.g. a difference map) close to the point of acquisition is possible and valuable for the user to guide the experiment.

James opened with a reflection on the prior day's discussion amongst developers, that the prediction of still shot diffraction images continues to be a challenge, though we are (as a community) making progress on this and new ideas are appearing. Including synchrotron-based experiments as well as XFEL has brought in more "scientist programmers" [^1] and in particular simulation-based approaches to inspecting the data are showing promise. James then commented that we _do_ have a clear idea of what the problem is, and this is shared, but the solution is currently ill-defined and thus some healthy competition is valuable. James then went on to discuss how the "data quality" issue is also distinct from fast feedback - and a growing problem with new instruments and light sources. Presenting interfaces to the user which give a clear indication on how their data look is critical, but making such a system portable presents specific challenges.

Top opened with a slide presenting the live feedback set-up at DESY / Petra III / P11 where _two_ CrystFEL instances are run, one to present live feedback by sampling from the data stream to give live feedback results, and the other (which may lag) for providing "good processing" directly from the data stream. The live feedback does not require prior knowledge e.g. the unit cell etc. and does not attempt to integrate the data - the focus is only on spot finding and indexing. For the users this distinction is viewed as being a pragmatic compromise. The DESY [ASAP](https://asapo.pages.desy.de/asapo/docs/overview/) system is integral to making this work, and offers e.g. the choice of saving "good indexed data" to the final HDF5 files. Tom has not much been working on the partiality problem but recognises it and hope to pick up again.

Art opened with a recognition that he has worked on a similar system to the one presented by Tom, to give live feedback to the experiment, and agreed with Iris over the importance of this for the user in a serial experiment. It was also found to be useful for rotation data, to give an early indication of sample decay to the user [^2]. For both processing and live monitoring it is about optimisation, since we want to operate the detector at 100% capacity and have the analysis keep up. The faster the data collection, the less useful the user is in the data inspection process. There is a lot of room to optimise - a factor of five - which is not glamourous work but is essential to keeping up with increased data rates. Derek is also working on new methods. Do we need live processing? No, but we need some live analysis. We are in the process of developing a neural network to indentify when there are multiple lattices, since users can waste a lot of time on data which won't process - early red flags of great value.

[^1]: the stenographer appreciates this choice of language.
[^2]: GW commentary: we have had _per image analysis_ in place for a similar use case for several years at Diamond, but this does not attempt to index the data.
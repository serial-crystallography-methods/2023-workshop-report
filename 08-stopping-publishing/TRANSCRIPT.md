# Raw Notes from Session

Title: What is stopping us from publishing

Mod: Jeney Wierman

Panel:
- Graeme Winter 
- Aaron Brewster
- Iris Young
- Derek Mendez

Session opened with some observations. Specifically, that technique- and development-based serial macromolecular crystallography (SMX) are a large fraction of literature. There are also droves of unprocessed data, and the published datasets are only some on few systems (won’t mention our favorite sample proteins.

Jeney queried chatGPT for what are the challenges for serial protein crystallography. <nonsense>
    1) Technological challenges 
        a) Crystal delivery, sample tracking, processing, automation
    2) Data analysis and processing
        a) Large amount of data
        b) Extracting meaningful information
        c) Hesitant to pursue SX due to computational demands and lack of standardization
    3) Access to specialized facilities
    4) Maturity of the technique
        a) Gain acceptance in the community
    5) Alternative techniques
        a) maybe complimentary?
        b) Cryo-EM
    6) Limited focus
    7) Limited to specific research areas
    8) Method validation
        a) Routine adaptation requires extensive validation and comparison with established methods
        b) Demonstrating reliability, reproducibility and accuracy is essential.

Specific questions for the panel and audience.

- What is stopping us from publishing?
- Who is doing SMX outside of developers/software/methods?
- What specific goals do end users hope to achieve in using SSX?
- Are we finding suitable targets for SMX and time resolved crystallography?
- Are we focusing on the low-hanging fruit? Or just more high-impact?
- More challenging data sets be damned!

## Discussion

It takes a really long time to publish. If you want high impact, acquiring the data might be easy, but to get correct data could take years. This isn’t limited to XFELS, many projects are large collaborations and it is challenging to get everyone working together.

Aaron Brewster: somebody in Kern group was assigned this job to do PS2 studying the diff maps. More than just the technical stuff. Kept doing refinement to do science and make it count

Iris Young: disagrees. See point. Analysis specialized. "moving window average" pull in more data over time.

Patrick Rabe: need to wait for time. Need time to confirm in solution which takes time too. Cryo a little more straightforward. More established workflow.

Iris: a LOT of spec and pre-characterization maybe not typical to all systems?

Dan Paley: is this applicable to all? Can we reduce the barrier to entry? With standardization etc.

Many proposals are ambitious projects, particularly at XFELs where hunting for small signal is common and utilizing pretty atrociously complex or unsuitable setups. There’s also the competitive aspect of proposal writing. Getting small signal from noisy data. Detectors had and still have issues. Stoch. Variations at XFELs obscure things

Cynthia St: Validation is important. Hard to validate directly what you see. Because of small signals. Getting the correct ones. Grants sometimes tell you this is impossible. Comp chemist colleague: hard to convince new communities too.

Aaron Brewster: agrees with patrick…not the end of a campaign but the start. Which triggers new research. Got the structure but now I can do SCIENCE. Mutants, made experiments.

Graeme Winter: mostly XFELs, less grand challenges at synchrotron radiation light sources. more straightforward studies. But what's our expectation? Typically end up at XFEL if you are doing something complicated. Is it unreasonable to expect such quick turnaround. Lots of re-processing of data afterwards too.
 
Kevin: caused him to write careless. 2017 XPP: collected stills on large GFP with THz. First lesson: XPP was NOT ready. Data rate was limited with the goniometer…single crystal too slow…not enough frames…got structures but not for tr differences. Second lesson: it was tough to lobby afterwards without the full impact had to get new time. Custom setups are hard. How do we make it easier for them. Why so hard to get beamtime?!
 
Tom White: small signals and instrumentation. Metalloproteins….looking for small signal…some rookie analyst is looking at the data…turning all the knobs at once and then stop when they see it. That’s why keen on live processing. How can we design the experiments to get the best SNR.

Jeney Wierman: even outside of serial this is issue. Analysis paralysis.

Thomas White: especially if high impact and under pressure. How can you make someone give up? Like stop.

Dan Paley: slippery slope. Additionally, publishing is hard, like Cynthia says, just 1 or 2 exp you're looking at. Serial, not enough experience for validation. More beamtime. Back to outreach. Beamline scientist partnering with labs to reach out like Kunio at Spring-8. sSetup conferences.
 
What is crucial is to have simultaneous validation, mostly to knowing when to stop collecting data. Quick feedback very valuable.
 
Ray Sierra: contact the PRP maybe? List is public. Outreach to them. Facilities XFELS are trying with rapid access; can’t get beamtime on vibes.
 
Graeme Winter: out of context comment…TW worried about twiddling dials. Scientists are optimists, especially less experienced. Is ligand here or not? Twiddling coot..BUT GREEN…noise, not relevant.
 
Matt M: should we pre-determine what these SNRs are. Spread to the community. Establish a validation protocol? Share publicly.
 
Nic: so many things at once, spread to thin collecting all these things.

Iris agrees: PSII if we see signal we wait. 6 structures with small changes is not better than 2 with huge.

Aaron Brewster: trying to build evidence. So close and building tools but so close.

Kara Zelinski: to matt's point. What is appropriate and what’s not. More things become routine standards come up. Get bad stuff out of the way

Derek Mendez: rhodopsin Xtal at CXI. Wanted to look at window of time. Don’t care. Randomize every shot and sort it later. Got beautiful data. What do we do at 20kHxz. Nothing just collect and sort
 
Aaron Brewster: doesn't agree with Kara we have high standards. Sometimes too high.

Kevin Dalton: all are outliers

Iris Young: have two people do the same analysis. Simultaneous working. Don't publish yet let's see if we can get this somewhere else.

Patrick Rabe: collect spectrum at same time, then process review and go over. And see if they come to the same conclusion. Like a double blind study in parallel.

Dan Paley: good to be self-aware. Here to improve. Policy cultural

Matt: get it back to the public record and education. Reading a program and document. Something tangible for the biologist 1.7 is too low
 
Ray Sierra: PS11 early days we wanted the full KOK cycle. Set expectations. Don't swing for the fences. What about mini campaigns something in fall 3 days. Then summer 3 days. Time to reassess get basics then intermediates.
 
Kara: how many intermediates do we really need. One with big signal
Jeney Wierman: system and temporal resolution dependent
Maybe a few papers where ICH has one. Maybe ok for certain systems.
 
Access to synchrotrons is critical for screening (unit cell etc.) but there is discussion on if it would really reduce our XFEL time. The chaos is permanent.
 
Steve Meisburger: going out on a limb on weak data. Can publish and go out on limb and have community be honest. Lot of science and nature appeal so high pressure. Can be a basic bull result. Be honest. Report the failures more.

Graeme Winter: used to be beamtime Nature quid pro quo. Hire more statisticians. Robustly interpret data. As part of peer review and examine critically if this is relevant.
 
Asmit: using weak signal to claim certain things not specific to serial.
 
Dan Paley: back to quid pro quo. That attitude is real and bad. How do we get rid of that? That’s what builds this pressure. 
The statisticians…onus on the group. Or like the public best practices publication.

Graeme Winter: could put in a grant and some models and make it well posed. We have not been doing this until recently.
 
Art Lyubimov: standard table 1 is not common in other fields like this. Could problem be that structures aren't that interesting…can only do so many times. Had high resolution 0.7A with waters…and no one cared! Need hypothesis research to do biology. Like PSII is starting to solve some problems. Up to the users not facility.
 
James Holton: re statisticians won’t last very long. What is sigma and sources of error. Error bars on intensities are pretty good. But 20% of total error from model and data. Large and unknown systematic errors.
 
What’s stopping us from publishing?

Sometimes, it is the review process in either  
 
Aaron Brewster: feel good about publishing.

Iris Young: preprint is not so common but maybe we should

Derek Mendez: more time. About 6mos
 
Kara Zelinski: oversubscribed key staff
Iris: chaos all the time. Something always more urgent
 
Jeney Wierman: can we expedite or automate

Aaron Brewster: We work ourselves out of jobs. Always writing some new software at EVERY beamtime. SR might be in better place.

Kara Zelinski: SR are worse. They never stop. Beam stops finite stop. Less experienced support staff. Users are one stop shop.

Iris Young: some XFELs can be like this with long stretches or multiple facilities or off-shift work.
 
Asmit: re hypo driven science. Reviewers are not willing to believe the results. Maybe not familiar with serial. Is protein cite damaged? Hard to convince reviewer that you have the support data. General awareness of serial methods.

Art Lyubimov: subject to confirmation basis. Especially if result is unintuitive.

Derek Mendez: hard to do proper controls with serial experiments. Solution scattering at an XFEL, rhodopsin, light triggered. Took good control data.
 
Cynthia: field needs to know what’s appropriate or not.
 
Ray Sierra: best laid efforts go to shit. All experiments are hard to be planned. A

Graeme Winter: all XFEL is relatively new? Are we promising unreasonable things. Rotation collection is robust 20-25 datasets per hour. Easier to estimate and be reasonable. Some of this rubs off on serial SR. serial you never get data before lunchtime…something will show up and interfere. Be more realistic and plan better.  Push back gently if we didn't have to promise the moon on a stick at every shift.

Kara Zelinski: as grad student  2-3 timepoints per shift. "too many experiments" should be backups and contingencies but still need to be realistic. Best plan made NOT on the beamline. Plan out and stick to it.

Derek Mendez: collaborations are still too small. So need help but it costs by bringing in another sample. 10X more people planning and experts from all over. More during planning. Saw great pump probe signal and excited…turns out it was water heating.

Jeney Wierman: NIH considers crystallography to be mature. No development. Putting less resources. Reason for this forum. To fight back. We need more resources. Look at the niches we need to fill with people. How many people outside the developers are doing serial? Not many users, because you still need the developers and experts. More collaborators are needed for every experiment.

Kara Zelinski: can get more doing serial is easy. Serial crystallography is becoming more routine on fixed-target-chips. Close to achieving a workflow for this. However, time resolved is hardest.
 
Graeme Winter (in response to Jeney): It is bad news. This field is really well funded compared to other fields. Over last 20 yrs. We need more people yes, but we're pretty well staffed compared to others. Need to be realistic too. Macromolecular crystallography gets a hard time all the time.
 
Aaron Brewster: 1) some cool things at LCLS with science campaigns. We don't have to promise the moon because we are spread over 3 years. So less pressure to propose. A little unfair that only some groups have…but can we do that more. Now we can relax more and target the research
2)we might be too hard on ourselves. Lots of good papers and hard to write in report emphasize
Still hard to emphasizes papers. But this is a good thing. Our research is generating new research. Maybe leave field because of funding
 
Bio research is all time high and nih thinks cryo is good easy
 
Matt: bio questions is not really in serial time-resolved thing. cryoEM is new sexy and see the whole virus and how things attach. Like pharma not doing serial, they have money and power, get them interested and others might follow. Showcase more diverse biological questions and generate positive feedback.
 
Art Lyubimov: we need to be ready to answer that question. What can you we do better or different than cryo. Without getting defensive. Some folks might intentionally try to provoke "convince me". A lot of gentle putting down of the technique.
 
Dan Paley: headaches form high expectations and then huge shitshow. For Ray do campaign folks comeback better

Ray Sierra: yes more relaxed. Know what they know what they’re looking for. More relaxed typically.

Cynthia: the validation is tough. Large collabs and slow. Haven’t done XFEL

Aaron Brewster: validation is very important. We don't really have magic numbers or serial . Cctbx have heuristics for CC and I/sig. but no hard science. Wish we had and are too new.
To Graeme Winter: still changing we're not stabilizing yet.

Graeme Winter: SR is still changing. But data takes 17 min to 7 sec. robots etc. the pressure on SR beamtime has massively dropped. Not limited by shutter open time. Limited by home in the lab. # of pins, loops etc.

Jeney Wierman: True at UK and chess. 24 hours shifts have nobody there at night. I can leave and come back. No time pressure. Could get more science done.
 
Ray Sierra: so would 25 khxz fix this?

Derek and Graeme: Actually it might help
 
I24 being repurposed at Diamond. Less competing and get daytime shifts. And then switch over. We've invested in the hardware for daytime weird serial stuff and then routine static collection at night. Need to invest to allow you to do that. 

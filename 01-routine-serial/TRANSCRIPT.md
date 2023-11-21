# Why Serial Crystallography?

Solving a structure is no longer enough. You don't get a PhD for a single crystal structure, it's more like NMR: A solved problem.

More interesting question is how things work: binding, photochemistry, reaction intermediates.

Emphasize that this workshop is about serial still diffraction

Panelists -
- Rob Thorne, physics professor at Cornell
- Kara Zielinski, grad student at Cornell
- Aaron Brewster, LBL scientist
- Daniele de Sanctis, beamline scientist at ESRF

Moderator: Jeney Wierman

Note taker: Dan Paley


Jeney: serial diffraction has not yet taken off as a routine technique or set of techniques. Questions: Why do we want to use serial crystallography? What are the specific goals that end users want to achieve? 

Rob: mindset has grown around the requirements of using XFELs. Not necessarily relevant if we're going to be doing SSX as well. Need to ask ourselves what the users actually want. One thing is just getting thousands of crystals into the beam, another is time resolved studies; but we don't know what targets are appropriate for TR studies, i.e. structures that are still active in crystallo. 

Kara: most exciting part is doing room temp studies, closer to "natural" form. Lots of recent progress especially in ligand binding. Biggest current barrier is on the sample prep side because we actually have good reliable methods for doing the TR diffraction experiments. Possibly compounded by the other problem of getting structural biologists interested in putting in the time to grow good microcrystals for serial. Possibly controversial: room temp for static (single crystal) is maybe taking off even more than room temp serial.

Aaron: Start with recap of what XFEL science has achieved in the last decade. Lots of pump probe studies but most interestingly there's a wide variety of pumps and probes. Most obvious is photochemistry. Other pumps include reaction chambers (gas atmosphere), mix-and-inject studies, drop-on-drop mixing (smaller ligand consumption). Next point is small-molecule crystallogarphy which is really different at XFELs, we can solve microcrystal structures, similar impact to MicroED. Need for onboarding new users, making training materials available to reduce barriers for getting involved. For developers, there are some important unsolved problems too, including sample shipping and understanding diffraction physics.

Daniele: Important applications are room temperature and time-resolved. Developing methods for in crystallo enzymology. Importance of technological advances, especially photon sources: 4th generation synchrotron sources are much brighter and we can think about doing studies that were previously impossible. Also detector technology: we couldn't talk about automation in MX if the detectors weren't fast enough to keep up with the robot arm. However there is a big learning curve, we have a lot of accumulated experience in this field.

Jeney question: are users interested in remote data collection going forward?

Daniele: Sometime in the future, but requires more work on sample shipping, we're not there yet, but should design beamlines and experiments so in the future we can adapt. Comparison to remote single crystal MX, where it took off suddenly because of the pandemic.

Kara: 2 use cases for remote. Experienced users, low effort pipeline for crystal screening to support methods development. Second, non-specialists who have accidentally grown microcrystals and want to confirm if they're any good.

Jeney for Aaron: Is it possible/practical to do XFEL experiments remotely?

Aaron: We have done remote experiemnts (especially data processing), but XFEL science is really team-science-focused because of the bespoke sample delivery conditions people use. Bring a tape drive and a team of scientists to operate it. Currently for the exciting time resolved stuff, need to do too much on the fly. However we have have exciting advances including standard configurations at beamlines.

Ray Sierra: We do have standard configs. Remote access is about enabling small groups. PCS program is meant to be the lowest barrier to entry, but it's still a really high barrier. A user came by himself and said if he comes back he's bringing 2 more people. XFEL is not like synchrotron because there are 2 X-ray support scientists, often 2 more beamline staff for sample delivery. Continuing to move toward more standardization, but there is still a long turnaround time, which is an access issue.

Kara: They have already done remote-access mixing studies and they got publishable data. The tools are robust already; in mix-and-inject field there is actually more standardization at XFELs than synchrotrons. They've done half an experiment during PCS time because it was easier to get.

Rob: Mitegen is all about remote data collection. Japan does it correctly with super simple sample mounting on nylon loops. Users don't put any effort into optimization because it's so easy to just send anything. Mail-in studies will be our "loss leader" to get people in the door, we have to acknowledge that most people are not specialists and they don't want to be early adopters, so we have to make it really easy to start. After users realize the potential, they can learn about more advanced experiments. Points out that cryo structures are often fine, especially because crystal packing is equally important as a perturbing factor. He sees mail-in, high-throughput, fixed target, cryo serial diffraction as the easiest point of entry. He thinks small rotations will be get more traction than stills because the processing is easier

Jeney: opening up to public, why has serial crystallography not caugh ton more

Eike Schulz (Desy): Recently shown that synchrotron and XFEL serial are identical quality; so synchrotrons are a good entry route for crystal testing. Serial cryo is also a good way of evaluating sample quality. Disagrees with Rob that room temp is not too important.

Cynthia Stauffacher (Purdue biology): Studies enzyme reactions, has 2 systems appropriate for watching an enzyme do catalysis in crystallo. Has used cryo serial diffraction to slow down reaction and watch on minute scale. The blocker for her has been "do we have to do Laue? is it too hard?" Can get around it with more training or help available for processing. Glad to hear that is a topic being discussed.

Jeney: There was a broad consensus this week that training/documentation is really important

Patrick Rabe (Oxford): Biggest problem is shipping samples, can lose grams of sample in shipping. People are also struggling because methods are not comparable from one XFEL to another. Need standardization of configurations (including pump probe setups) across facilities. Also need a lot of money to produce huge amounts of sample.

Kara: Also need better connections between new users and experienced users. Some groups are trying to get involved but the connections are word of mouth or informally facilitiated by beamline staff.

Graeme: About interfacility standardization, this is not a new problem. In the 90s people would bring their own goniometer heads. Synchrotrons have already been through this whole process, especially standardizing sample handling. Standard pin base enables robotic stages. Sounds trivial but these basic logistics are the way you make facilities interoperable. Maybe not full automation but smaller teams onsite. We also had onsite dedicated data processing teams for synchrotron experiments in the 90s, that is no longer needed either

Daniele: People don't need to learn Laue, he thinks it doesn't have a big future. They selected 1% bandwidth because wider would require dedicated pink beam methods and scare people away. For standardization, requires community buy-in and also commercial suppliers to make the consumables (targets etc).

Derek Mendez (SSRL): Question for Graeme about synchrotrons solving this problem: specifically how did it happen?

Graeme: Other people were closer to the beamlines, but developing the SPINE pin was a bureaucratic nightmare of meetings and committees with a very useful outcome. Thinks we have a quorum in the room to agree to push toward standardization.

Derek: Is it driven by companies or by academic groups? Do you need something monetized to reach the goal? Also comment for Daniele: there is at least 1 group working on making Laue diffraction more accessible (i think he meant the Hekstra group)

Martin Fuchs: important to consider the gain to user community when you standardize. Then they don't have to learn a new thing each time they change facility, that's a big barrier.

Jeney: it's a hard pill for academic developers to swallow that they have to give up their own technology to allow standardization to happen.

Rob: question for Kunio, Japan seems to do single crystal standardization differently; he wonders if adoption is easier because the setups are typically simpler.

Kunio Hirata: More common to do small-rotation serial, but now plate scans are becoming more popular. Collaborations with specific domestic robotics companies.

Matt, Grad student from Thorne group: important to remember that user priorities are not in the same place as developer community. Need really really low level documentation. Suggests Youtube, he can watch someone type in commands, but it's harder to read stuff that developers wrote.

Aaron: Matt's point is great. Reminder that we're preparing a report from this meeting. Reports are awesome, it's how change happens in the scientific community. Funding agencies are paying attention, what are scientists saying that they need? "We heard repeatedly the need for better training, documentation and tutorials to bring people onboard." We can wave that report in front of funding agencies to make it happen. 

Jeney: the developers are here and we want to hear what the challenges for users are.

Philip Rushton via zoom: emphasize benefits of onsite work for training reasons.

Graeme: remote is an option, shouldn't be exclusive. It's good for high throughput work but maybe not for less routine stuff. Diamond is always willing to schedule training time if users contact in advance. Developers are likely always enthusiastic about working with users.

Ray Sierra: don't want to suggest that they want to keep the users away. Having users come to the facility is part of the purpose. Automation/standardization is partly important because it will free up the staff from pointless shipping problems etc

Fabio Dall'Antonia (EuXFEL): comment on encouraging inexperienced users to come onsite. They have a contact person to work directly with users, but also the software developers try to visit the experiments to get feedback from users. Need for standard "pipeline" processing approaches, but also good documentation for nonroutine cases.

Rob: Have structural biologists been surveyed about their needs for serial diffraction? Mitegen tries to cultivate their customers and it's not easy to get good answers. Most people aren't really thinking of serial. Maybe users exit surveys at synchrotrons could also help get people thinking about serial.

Eike: maybe not clear to the larger biochemistry community what is possible with serial. The emphasis is still on structure, but he agrees with Graeme there is no future there. Need to work on dynamics. Community is not super aware that these studies are possible with serial methods. In this context, PSII is a good example of what's possible, but it also gives the impression that serial is a niche technique for specialists. Remember that structural biology is really all about understanding protein function: need to get that message out to the wider community.

Jeney: There was a suggestion to attend conferences with a wider focus, not methods conferences. Go to protein society meeting or biomolecular meetings. Question for the room, do we currently go to those meetings, and can we start?

Kara: She does go to these meetings and talk with possible users, but the main hangup is preparing the samples. Just getting people excited is not enough, also need to make it possible and convince people to commit the effort to crystal growth.

Art Lyubimov (SSRL): Crystallography is not a stranger to difficult sample prep. There has always been a reputation that growing crystals is the bottleneck. It's not specifically the effort required, but an appearance that the payoff/effort ratio is not there. Previously you put in the work and you get a whole structure! Now it takes a lot more work to even explain what the payoff is.

Kara: Agrees with Art, but also need to be aware that the alternative is cryoEM and it's super easy

Graeme: Need to be careful that we don't try and "sell" serial crystallography as a tool. There's an impedance mismatch between himself and someone who studies kinases. Instead of directly selling to users at meetings, we can use viral marketing by letting possible users speak with existing users who are excited about the results they've been getting. Our users are the best salespeople.

Nick Devenish (Diamond): As developer, he has the opportunity to visit experiments and sit with users. This is especially valuable as an outreach tool, it makes users aware that the developers are engaged.

Derek: emphasizing Kunio's point that the beamlines choose a few collaborating research groups to work closely on methods development. Where do those groups come from, how are they selected?

Kunio: when they have a new technique, they go to the relevant conferences and find people who would be interested in that technique.

Robin Owen (Diamond): Coming back to what's the entry barrier for users. Why aren't our traditional MXers all doing serial? He thinks it's because it's scary. "We've improved things, now you only need 5000 crystals." We're blurring the boundaries with things like introducing rotations to reduce the number of crystals needed; can do serial on a micromesh. It became harder with the beginning of more remote data collection, need to build the bridge back with those users to say "Come and try this"

Ray: Wondering if users hear "5000 large crystals" and should we translate it to "x grams of protein" instead so that we don't give users the wrong impression. Maybe making a couple hundred microliters is actually reasonably easy. Rephrase the number in a way that's accurate but sounds more approachable.

Matt: Can we provide a decision tree? "Do i have 1 large crystal, no; ok do we have 30 crystals? etc" But nobody wants to work with microcrystals if they can avoid it, it's the most challenging. Sounds like he thinks you have to individually harvest 10k crystals

Iris Young (LBL): Highest barrier is as an individual, lowest barrier is as a group collaborating with another group. How can facilities incentivize this model of groups working together? No substitute for getting to see someone else do the whole procedure.

Aaron: Keep in mind what serial is for/why it's great. 1. I want to solve a structure and I can't get big crystals. (Could be protein or SMX). 2. I want microcrystals because I want to do time-resolved studies and it's way too hard any other way (In this case it's easier to grow bulk microcrystals instead of tons of individual crystals)

Jeney: Many people when they just got started, learned that "showers of crystals" are no good. She hopes that knowledge isn't still being passed down because it's no longer accurate. 

Jonathan Clinger (Baylor): Users think that time resolved experiments sound cool, but they're scared of it and they've heard stories from the early XFEL days where the experiments were really hard and unreliable. Have to convince them that it's not quite as scary, you don't need grams of protein, maybe 100 mg; and people do this not just at XFELs but also synchrotrons. If you can get those people in the door, they become your best advocate. Main problem for those users is they don't want to become experts in sample delivery. Can we put on their crystals and do the mixing studies for them?

Kara: emphasizes that microcrystals are a requirement for mixing and pump/probe studies. Also thinks that low-friction screening time for users who have accidentally grown microcrystals is a powerful concept for bringing users in the door.

Derek: What about nanocrystals?

Graeme: There is a 500-nm focus beamline at Diamond, but it's hard and electron diffraction might be better.

Kunio: solved structures from 500-600nm crystals by serial rotation crystallography. Protein is polyhedral, well-known sample for synchrotron diffraction, very well diffracting with low solvent content. Thinks in general nanocrystallography is not good for synchrotrons, XFELs are essential.

Daniele: agrees with Jonathan there are a lot of misconceptions influenced by the very early papers. Need to get new information out there about the current sample requirements.

Kara: many papers don't publish pictures of their microcrystals. It's hard to know what good microcrystals look like, there's not a lot of public information. 

Aaron: it's a bit more common for chemistry groups to take SEM images.

Jeney: Hauptmann-Woodward institute has a webpage about crystal growth.

Rob: for nanocrystallography, there are ways (micron focus, good detector) to get usable diffraction. Yes MicroED is also good, but he's not sure about the throughput.

Jack Stubbs: echoes Kara's comment that there's not a lot of information on sample prep out there. People ask him "what paper should i read" and there's no single paper to refer to. Methods sections are not reproducible.

Graeme, comment to Rob: Yes it's possible to do synchrotron experiments on 500nm crystal, but it's really hard and there's a lot of engineering involved. However, small rotations are valuable, also high energy photons and CdTe detector. Thinks there will be more progress in the next few years.

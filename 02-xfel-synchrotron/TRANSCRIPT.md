# Graeme’s Session: Recognizing the differences in XFEL and SR SX

(aka how can we make the best use of XFEL and synchrotron serial crystallography, as complementary techniques)

## Introductions

Jeney Wierman — currently head of MacCHESS, previously worked at SSRL in Macromolecular Biology Group, connection to MFX beamline from the SR side. SR are critical resources including as beamlines mirroring XFEL beamlines directly. For XFEL, trial expts. For SR, if your expt fails there, you learn you need to move to XFELs. Barrier is processing stills. The processing is very different between SR and XFEL. While up until data collection looks very similar, once you have data, everything beyond is very different. Also setup (metrology, detectors) are different. But please use SR, talk to beamline scientists to help motivate why your expt should be done at an XFEL.

Kunio Hirata — RIKEN/SPring-8, sci at microfocus beamline. Interest is automation of data collections at SPring-8. Took part in XFEL projects as well at SACLA for damage free structural analysis of metalloproteins (2013-14) w/ combined raster scanning and rotation of a series of large (500 um) crystals, cryocooled, PSII. Data processing with MOSFLM, manually processing each frame, ~1000 frames in a dataset. Next, time resolved structure analysis: SFROX, room temp, 500 um xtals, humidity control, laser excitation, nsec to usec photolysis, processed with CrystFEL. SFROX (serial femtosecond rotation crystallography) is unique to SACLA most likely and cannot be standardized. Impossible in SR: dynamic < usec, damage free incl at rt, meas >= 30 Hz, very high brightness (SACLA <10fs pulse length). Limitations of XFEL expts: diffraction images do not show structures, so need to keep fast feedback as complete and informative as possible. Need automated data processing, validation and structure analysis pipeline. Measurement: xtals living, need to match timing of meas and xtal status (state). Limited machine time -> stressful to prepare HW and xtals. Jet expts: many unfamilar with HW problems (tube clogging, jet in beam, sample holder breaking or punctured by laser). Meas time is simple and repetitive so we need a lot of people (who also need to sleep). Need careful preliminary expts (should be req’d) at SR before running XFEL expts. Standardisation would also be very helpful — use worldwide expertise. Intensity of pulses varies like weather, and energy varies with it, making data processing difficult. Need collaborative work to link pulse params with data processing. Mature SR expts: radiation damage limits are ~10 MGs for cryo or 300 kGy at rt. Narrow band width at SR (1/50th of XFEL). Rotation preferred for redundancy. For discussion: consider reqs (damage free, time resolved < usec); sometimes difficult to see structural differences even so. Common problems in XFEL/SR:For time resolved expts, fixed target with fixed xtal positions should be important, need to reduce sample consumption, xtal packing may be problem, and sample prep with respect to timing is a challenge.

Robin Owen — DLS. Possible topics suggested by Jeney: beamline avail, nature of awarded beamtime, duration and frequency; sample delivery: availability and suitable approaches, limitations by beam, automation and stdization; X-ray damage and changes; data processing: formats, metadata, challenges; Automated data processing: live feedback and useful metrics, integrated and merged data and maps. In Europe, grants are “in kind effort” (can you do it for free). Sample deliv differences: similar under cryo, but at room temp or XFEL is different. Data processing difficult at both sources (serial) but improving, especially live feedback and metrics, which are nearly routine by now.

Artem Lyubimov — SSRL/SLAC, Aina Cohen’s group. Not just serial xtallog dev but also user — started as both, saw how field progressed over past decade from both perspectives. XFEL and SR methodologies appear to be beginning to converge. Began by bringing SR methods (esp gonio) to XFELs and XFEL methods (esp liquid jets) to SRs. SRs are getting faster, hotter, narrower beams; have performed jet expts at BL 12-1. “Mere” technological challenges are being successfully addressed and methods are converging. Nature of XFELs as lasers is going to remain different. Will be up to users to come up with amazing new uses of XFELs. Standardization and automation are important for scaling up, but being able to do fantastically unique and weird expts at XFELs is also core to their usefulness.

JW: as SR perspective, obs’d a lot more communication back and forth btwn SR/XFEL. XFELs are hot new thing, all the cool kids want to do it, but it’s great seeing community stitching back together and working in parallel, not in competition.

GW: probably because cryoEM is the new new kid and we’re ganging up on them. JW: also alpahfold.

AL: cryoEM definitionally cannot do room temp expts. That is something serial xtallog will always be able to have an advantage in this regard.

Derek Mendez: is the world done building XFELs? Room says no. JW: no, they’ll be building smaller XFELs. DM: CFEL? (no) EuXFEL? LCLS-II? supporting high rep rates. Super high frame rate XFEL capabilities —> comments on that? GW: none of us really know what to do with super high frame rates. DESY: 100,000 Hz no idea what we’re going to do about it!!!

IY: spectroscopy? cryoEM vs xtallog for rt and resolving conformations?
AL: no matter how fast you plunge in cryoEM it’s not really a room temp data collection, and this will still lead to perturbations. Also there is overlap between cryoEM and xtallog structures. This does include conformational changes. Especially at ambient temps you can detect a lot of rearrangements on a catalytic scale as relevant to catalysis. Have been doing this for a long time. CryoEM is good for floppy structures that will never crystallize (as well as things that can) and many conformations in one experiments — that’s an advantage of EM. Debate whether xtals select for conformations or not. Yes, many differences, labs can do all of the above, AND NMR, AND even more methods. All complementary.

Ray Sierra: yes still building XFELs, China buildign 2. [?] also building 2 more. Of course also CFELs and upgraded SRs. Echoing Art, real power in facility like SLAC is providing a decision tree to explore multiple methods all on site, and huge computing cluster to support them all (incl alphafold as well). Ray’s political campaign is offering all of these. DOE: sth happened in March 2020 (COVID) to convince them that biology is interesting, not just the domain of NIH. Somehow they heard about virtual labs, combining labs all around US for bigger collaborative projects. What is the killer application for serial xtallog? Just one tool in a big toolbox.

Cynthia Stauffacher (purdue): have several projects, using both Xray and cryoEM on one of them. Looking for big domain shift that takes a lot of time vs looking at H transfer at active site. One or both techniques may be suited. Need lots of molecules to find the interesting states among them too. Not exclusively cryoEM.

Kara: Solution scattering can also do stuff like ensembles, large domain changes, room temp, time resolved, SR and XFELs. Can use SAXS for some things we don’t need xtallog for. It’s a big toolbox with lots in it and xtallog has a niche in high res room temp information — that is unique to xtallog.

GW: Complementarity across techniques. How can we best make use of it? Also for people who don’t know these capabilities?

Martin Fuchs: as facility users, when you have new users approaching you, do you have many cases or few where you recommend using both facilities? Wouldn’t you usually end up in one of the two for a particular use case?

RO: typically new users work at SRs for first experiments with serial xtallog, transitioning from rotation to serial. To push to XFEL it’s usually dependent on the problem they’re addressing — needing super fast, or metalloproteins sensitive to rad damage within the first SR image acquisition. Access to SR is a lot easier. Typically less time consuming.

JW: also a layer lacking attention: cross-collab is good and possible but not yet really cohesive. Any individual facility has guidance on the “right” way there and maybe one complementary way, but not a good bird’s eye view of the methods available. Had a dream that you could go to X entity and learn you can go to X technique to get X answer or Y technique to get Y answer … would like to ahve this. (GW: we have some of this at DLS when we get too big xtals and send them elsewhere within one organization. May be harder between discrete orgs.)

KH: now running structural biology national program. Provides resources for a project for an accepted application. Usually supports Xray, may also support NMR, cryoEM, etc and users may use whatever methods available on their problem, and have access to consult scientists in each area and get connected to other facilities for those methods. Good for users to have access to all.

Pierre Aller: at DLS have X-ray hub for not only XFEL but any bio problem they want to solve with X-rays (SR or XFEL). Advice about sample prep, financial assistance with travel, etc. to help promote people using SX.

[? behind me, new attendee]: how do we crowdsource and leverage modern tools like Slack and Discord to get feedback from community? Will always be issues with idea theft, unavoidable, but lots of value as well for a structural methods community showcasing what’s possible. Best way to do cost-benefit analysis: can we get these papers better recognition, higher impact journals, better grants? Need more buy-in somehow to support these resources.

AL: to put things into perspective, bitter about this: not new, not just for xtallog but for struct bio, trying to convince the field that we matter and have something interesting and important to contribute. Interesting convo w/ geneticist: “you know what I like about xtallog you use dots and then poof you have a structure” (!) as if ppl don’t devote their careers to this stuff. Idea that struct is meaningless unless it’s verified by other biological methods. World-shattering accomplishments by xtallogs over decades not adequately recognized as independently valuable.

GW: how do we help you to make better use of this complementarity between methods and facilities?

Derek: less than microsecond timescales mentioned by Kunio. Know about fs timing expts for things like rhodopsin, really great stuff published, but getting fs or 100 fs resolution is nontrivial. Need experts in time resolved work and how to analyze it. Multimodal expt, unique to XFELs, very powerful for fast reactions. Maybe needs more effort to streamline these expts and software packages. Not just one tool to process and sort fs resolution time resolved data. SACLA has some resources, some tutorials at LCLS, but still nontrivial.

KH: depends on time scale of rxn in xtals. Before tr analysis, check rxn time in xtals (not in solution). Structural changes in xtals are sometimes slower than in solution because of xtal packing. Several cases where things don’t go the expected ways and revert to original structures too (reverse rxns). Recommend users check time scale with spectroscopic methods in crystals. This can be very difficult but is reocmmended where possible. For very short time changes verified, recommend XFELs.

Rob: slightly off topic, for pharma and industry, if you set up a CRO focused on XFEL and SR serial xtallog, what would they do, would you have any customers, or are these tools really for frontier research problems? CRO = contract research organization. “guns for hire”. GW: this is much closer to basic research, further from money. JW: from what I can tell, if funding is from NSF/NIH, takes a lot for them to give up time from supported groups. This is probably prohibitively expensive at an XFEL to support pharma/industry.

Ray: have explored, asked around, local Bay Area pharma companies contacted and interested, some companies did combined expts but beamlines are taxpayer funded as long as we publish publicly, which is not industry method. So industry pays for private time, e.g. $150k for a 12 hour shift to buy the time. $150k doesn’t scare them, but they didn’t have a % success rate estimate, and that scared them. At SR they had some idea, but at XFEL they don’t have confidence anything will work at all. That pharma company was interested in stuff that could be picked up by other techniques anyway.

Aaron Brewster: comes down to use cases, why do we need XFEL for a particular case. Solve struct (really small xtals)? If you’re pharma, how do you know this is worth it? Rob: more broadly, not just XFELs. Pharma can be persuaded to use serial most likely at SR. Aaron: answer is chemical crystallography. Want to solve structures of weird molecules. Chemical crystallog can make amazing use of some of these new methods in serial xtallog.

[?] at ACA talked to sbdy who couldn’t get ligands to bind, probably bc cryo, didn’ thave willpower to do rt, may not ever want to do serial. But looking at intermediates is powerful. Can map out a reaction, and pharma will then take over trying to optimize binding an intermediate state. Care about transition state stabilization. Probably care about ligand and drug dev but this would be a route to spark interest.

Ray: spread the word. Chair at USC does rt stuff, useful drug binding info from that. If we can show a cool result from a method, users will divert resources to it. (magpies: flock to it once someone else has it).

JW: most proprietary companies very protective of data, so once images have been taken, they don’t want anyone else to touch them, which is a huge barrier to esp. XFEL work, and industrial users definitely can’t take XFEL data and get a structure out of it.

Derek: unknown success rate scares off industry — is this related to R-factor or what? Ray: they don’t know what to expect, may help to standardize. Clogging, freezing, expt may not yield any data at all. Also, with stuff they’re interested in, small drug targets are in xtal-dissolving media, may not be able to get xtals to survive conditions needed for sample delivery at XFELs. Maybe fast mixing can do it?

Kara: is it controversial to say most xtallog should happen at SR? If you can do it at SR why do it at XFEL?

Robin: at SR method is to churn through samples as quickly as possible — is this suited to serial? In lockdown, expended effort on rt covid expts, essentially the same as cryo, never got published at all. Not necessarily a good match (MX serial xtallog at SR). Don’t think it matches current model very well.

AL: Kara asked a question John Spence would ask at every SSX talk. Answer: you’re at the mercy of your sample. If they’re big enough to use at SR. note that you need a really high res structure to look at differences at active site and they might only diffract well enough at high intensity. Wonder whether people don’t have as many XFEL worthy projects or that they don’t realize that their projects require XFELs?

Dan Paley: back to JW question on industry/pharma, note that James Holton says DOE facilities offer a proprietary rsch fee to keep data private.

Aaron: XFELs very oversubscribed. Have enough expts to do. But why do things at an XFEL — glib answer is radiation damage free 40 fs pulse, being able to get undamaged data. SR with recent increasing intensities and shorter exposures, but nothing yet can beat an XFEL. Matters, which is why XFELs still oversubscribed.

JW: yes, proprietary fee, b/c of legal team on both sides for NDAs and use of resources and what the facility gets/needs to know in order to process the data well. It complicates everything. Complicates everything for the facility to be able to enable those experiments. Between data and mtz is a really ugly process for proprietary data, to no one’s fault.

[?]: why mechanisms of action important incl tr, binding: if you have a strong mechanism, design drug to mimic transition state, may even have femtomolar binding! Less drugs mean more potent, better drugs. That is a big ask to want them to know mechanism rather than just screening.

GW: Slack channel is disappearing into another thread here. Pulling in some of that if we can.

Kara: to clarify question, rad dam argument is strong, but if you have 10-20 um xtal and 500 ms timepoint, why use XFEL for it? There are XFEL expts that definitely could have been at SRs. How do we force people to triage that a bit better?

AL: also glib answer: XFEL facilities are oversubscribed because scarce, and there are many more SRs, and each SR has many beamlines, and this is the situation right now but not necessarily forever. Not all SR have tr capable beamlines. If you are looking into active site dynamics or a metalloprotein, XFEL maeks sense. If multi unit assemblies, and how they interact with each other and 2ary structure and beyond, rad dam not much of a difference, 3 Ang resol OK, and SR is OK unless xtals are very very very small. For these use cases SR is fine for SX. Remains to be seen how these things sort themselves out. Also, even if you have rad dam that limits you, you probably want to try other things before XFELs before you take your very precious sample to an XFEL expt where you have a 12 hr shift and no time to troubleshoot.

James Holton: to clarify something about rad dmg, “meme” that rad dam can be outrun at SR by having more flux. This is not true at all. There are a few data points at ps time frames. Only real example of outrunning rad dam is on hundreds of femtoseconds. Damage is dose dependent on picosecond timescale and beyond. This is not going to be outrun at a SR. No dose rate dependence at SR with physics as we currently understand it.

Daniele de Sanctis: ESRF. wrt flux density, 5 or 6 orders of magnitude higher intensity than 3rd gen SR, still 8 orders less than at an FEL. Also different because of pulsed vs steady beam. So far, no specific damage observed in measured datasets, sometimes xtals holding up quite well at XFELs. Without pulsing the beam, with a fixed target, damage and destruction. May have some nice surprises!

Aaron Brewster: sharing LCLS current schedule of approved proposals. LCLS is on the same page as us: time resolved and metalloenzyme expts dominate heavily. Campaigns include PSII, oxygen activation in flavoproteins. Review committee knows what XFELs are good for and are awarding beam time appropriately. SRs can now take over what they’re very good at with SSX for all the other cases. Moment is ripe for this shift.

GW: proposals rejected because of time scales wrong: should we tell these researchers to contact SRs or specific beamline scientists to do their expts?

Nichoals Devenish: does this come down to outreach? Maybe they aren’t aware of other options for serial outside of XFEL.

Robin: EuXFEL review beam time. Panel indicates why, and should be explaining this already; on the peer review panels to explain that.

Ray: may not always be involved in the process to give feedback. Many proposals forget to indicate why does expt have to happen at XFEL, and more recently, why specifically LCLS (as opposed to other XFELs). With Arwen, giving good feedback on PRP, e.g. need to demonstrate that you have good xtals and they diffract at other beamlines, are you asking right questions and are you demonstrating due diligence (preparation). These questiosn are being asked by those reviewing proposals.

Aaron: one other aspect of tr: 40 fs pulse differential. Isn’t this also only at XFELs? Can you do these short pump-probe expts at SR? Not two-color, maybe optical dynamics. Dan Paley: referring to xtallog on short lived excited states? (y) In ps/ns range, need not only the delay but the probe pulse that’s on the same scale or faster than the process. ps excited states are always going to be XFEL only.

JW: for SR, for matsci, devs in place where there are multiple timing modes for probing structures. Different pretzel orbits and kick out one bunch at a time to have a possibility of pump-probe with real pulses. CHESS very interested in this. Different types of timing modes possible and under exploration. May or may not be relevant to SSX but SRs are exploring it.

GW: SRs have a lot less flux even in single bunch mode, though. 5 mins left, any wrapup?

Medhi at Cornell/CHESS: how collaborative are multiple SRs with each other? if you get feedback that this expt is not good for XFEL, do you get directed to a specific SR?

JW: all want to work together (facility perspective), friendly, but no good mechanism to directly transfer anything between facilities. Is changing. Murmurings of wanting to have single portal for all SR MX beamlines, not yet exists. Will keep you posted.

[?]: on XFEL PRPs, have a feeling that one group has time on every XFEL. Or is that not true — do you have X amt of time on all XFELs? How do you get more people in the door given these oversubscriptions? Ray: ofc PSII and lysozyme, we know. Brookhaven, SLAC and APS are trying to get onto the single portal system. At LCLS, have “campaigns” like PSII that are complicated experiments that cannot be solved in a single beam time, even five shifts. However, before campaigns we still saw recurring overrep of certain groups. Trying to democratize that more. Don’t need to have all the experts on your team already. Biologists can come in as just the biologists. Programs like protein xtal screening, rapid access. Trying to get there and get more new users access. Funding agencies ask the same question.

GW: XFEL hub entire goal is to get new small groups get started, get beam time, get through steps that are easy for the well established players in the field

AL: these are still the early days. “what’s up with all the globins? hemoglobin, myoglobin?” in the 50s/60s. Not just popular but also the systems that yield results. We will get past this.

# Executive Summary

## Notes by section

### aggregate

- goal is to take stock of this small sub-field of science at this moment in time from the perspective of developers (of both software and hardware)
- 

### 01-routine-serial

- what are the use cases for this method?
	- here limited to serial diffraction (stills), not small wedge
	- why use serial xtallog instead of another method for these problems ("why serial")?
		- room temperature, native-like conditions
		- time-resolved unsuitable for cryo (pump-probe, not only optical: gas, T-jump)
	- what use cases are *poorly* suited to serial xtallog ("why not serial")?
		- which of these obstacles can we eliminate? biggest obstacles are:
			- **learning curve**
				- training and documentation needed
					- dev-written documentation currently is not up to scratch, or at a basic enough level for new users of the method
					- intro tutorials may take form of youtube videos
					- on-site training considered indispensable (remote beam time not good for training)
				- standardization eases burden to learn new techniques
				- incomplete feedback loop to devs can be filled by devs visiting expts and talking to users
				- range of approaches needed to match range of user experience levels and level of expertise needed
					- for more experienced users:
						- collabs could be effective learning/teaching tool (esp needed for whole labs new to serial)
						- remote-access beam time and screening time appropriate (but shouldn't be overused at cost of missing opportunities for training)
			- **limited XFEL time**
				- intrinsic to XFEL method
				- serial expts at SR can help bridge gap between needed and available beam time
			- **time commitment (prep and expt)**
				- XFEL expts have partially true reputation of being incredibly difficult
					- has gotten better since early days
					- some perceived difficulties must be debunked incl. sample amt, individual xtal harvesting, need to be expert in all parts of operation
	


### 02-xfel-synchrotron


- major differences between SR and XFEL
	- administrative/logistics aspects of the beamline and facility
		- XFEL expts need a lot of people
			- coordination across teams/expertises
			- standardization would ease some pressure here too
	- constraints of experiment (sample delivery, time scales, automation, new-ness of methods)
	- X-ray damage
	- data processing (incl feedback)
- SR + XFEL serial xtallog experiment designs beginning to converge
	- facilities themselves have more similar capabilities with latest SR upgrades
		- value in SR beamlines that mirror XFEL ones
			- decrease pressure on XFEL scheduling by testing rigorously ahead of time in same env
		- SR, XFELs and cryoEM at same physical location allow users to explore "decision tree" of available techniques
		- there will not be a point where XFELs are completely displaced by SRs
			- some q's can only be answered with XFELs, although these are quite narrowly defined:
				- very short time scale
				- very sensitive to rad damage
			- building smaller XFELs incl compact FELs, and still building them in new places
			- serial will not be replaced by other methods either, and should be considered one of many tools, not necessarily only relevant as a best, standalone tool
	- sample delivery methods ported in either direction
	- progress toward standardization and automation
	- partly attributable to communication between XFEL and SR scientists
		- of which at least partly drive to not both be made obsolete by cryoEM, AlphaFold
			- cryoEM complementary but cannot fully replace xtallog (suited to answering different questions)
			- alphafold is a prediction mechanism, not a structure solution method
			- xtallog still uniquely suited to time-resolved expts, but inherently hindered by averaging over units in the crystal -- potential for further advances in recovering conformational ensembles
		- most users progress from rotation xtallog to serial synchrotron to XFEL (as far as relevant/necessary for their science)
		- some remaining lack of communication between XFEL and SR specialized groups and facilities prevents users from choosing the best methods for their problems sometimes
			- facilities/institutions generally refer in-house but not to other facilities to do science or even answer questions
				- exception: Japan nat'l struct bio program
				- XFEL hub at DLS seeks to fill same role (limited to X-ray struct bio)


### 03-deposition

- FAIR principles
	- now mandated by US govt for products of publicly funded rsch
		- "raw data" must be retained and made accessible -- what is raw data?
			- broadest: all frames collected
				- untenable for large data rates
				- arguably unnecessary (blanks, calib runs, frames w/o diffraction, diffraction but not indexable, and other frames not useful to keep)
				- some of what's considered not useful when archived may be useful to later developers
			- medium: keep "useful" diffraction images, discard blanks (room for interpretation)
			- narrowest: keep only frames contributing to final merged data
				- defined by criterion of reproducing results
				- limited ability to validate choices leading to frame inclusion/exclusion in this case
			- alternative: use image compression
- barriers to data deposition
	- labor-intensive for both experimentalists and database maintainers
		- already nearly intractable for XFEL expts
		- deposition review by database maintainers also extremely laborious
			- automation tools available for some steps and continuing to improve
				- incl extraction of info from log files
	- cost of data storage nontrivial and quickly getting worse
		- most economical, long-term storage is on tapes in mult physical locations
	- deposition of multimodal expt data is ambiguous and challenging
		- not standardized with any database
		- difficult to appropriately annotate and keep track of associations between data from different sources
		- difficult to describe connection of structural results to raw data
- what is the purpose of archival
	- allow other rschers to reproduce or validate results
	- allow rschers to use and build upon results
	- provide raw data for use in developing better methods
	- track science output for beamlines/facilities

### 04-missing-integration-scaling

- data analysis for live feedback is important
	- data processing for feedback is distinct from either data quality measurement or data processing for downstream science
		- users may take results of live data processing without revisiting for full analysis later
			- data from live processing often is already close to as good as it will get
			- if we expect users to do this, we need to ensure live processing is good enough for downstream use
			- calibration must be good from outset — avoid repeated reprocessing
			- post-expt reprocessing to solve thorny issues sometimes unavoidable
	- portability of feedback systems between facilities is challenging
	- cctbx.xfel GUI and DESY ASAP system both provide fast feedback capabilities designed for that purpose at XFELs
		- other mechanisms completed or under development by other groups (Art, Derek)
		- DESY ASAP system not portable b/c of DESY IT support necessary, but underlying design is
		- portability requires standardization to some extent, e.g. interface for message passing implemented in ASAP (already shared with DECTRIS Eiger)
		- cctbx.xfel GUI requires supercomputers, MySQL servers, and fast data transfer between expt and compute cluster
			- optimized for working at LCLS + NERSC
			- can function locally at other facilities with adequate compute power
		- cctbx.xfel GUI developed mainly reactively (to fill needs as discovered) -- potential to build up technical debt
	- some level of feedback needed and already used at most SR/XFEL expts
		- systems like SynchWeb and ISPyB preferable to command line use of tools for feedback
	- can it run on a laptop?
		- laptop should be (but isn't yet) sufficient for feedback use case (not full processing)
		- some users want to run live analysis with facility-provided compute and do post-expt analysis on laptops
		- post-expt, up to several thousand indexable patterns currently processable on a laptop with CrystFEL
		- work you can do on a laptop is a better teaching tool than work on facility computers
	- how much compute does it need if we don't limit to a laptop?
		- possibly worth optimizing (algorithms stuff)
			- removing "face palms" would already be a good start
		- "throwing more cores at it" working so far, but maybe not sustainable
	- incorporation of multimodal (e.g. fluorescence) data would be valuable
		- can be informative about alignment of stream
		- standard tool set proposed that should be provided by facilities: live radial average, spot counts, spot separation histograms
	- feedback systems must first and foremost be fast
		- fast results more important than good results -- fold this into the design
		- robust is also important -- should be able to recover from errors and handle bursts and pauses in data rates
		- become more important as data rates increase (and user is less able to keep up with any manual inspection without dedicated tools)
		- feedback must also be useful: interpretable at a glance, actionable during expt
		- hard lower bound of feedback lag time is time for data to appear on disk and be readable by program doing the analysis for feedback
			- prompt to examine entire system, not just software, and plan around it from the start (facility and expt design)
		- reserved time on HPCs can allow breathing room for some exploratory reprocessing in addition to live processing
- still shot prediction still challenging and can be rate-limiting
	- simulation based approaches promising
	- understand very well what the problems are, but not yet the solution(s)
- partiality problem lingers
	- necessary to address this for final dataset quality (not live feedback)
	- spot prediction/partiality known to be primary source of inaccuracy in stills data
	- potential for a black-box ML solution
		- should be viable if scaling is sufficiently overdetermined
	- unclear how this differs between struct bio and chem crystallography, and why it's so much more of a problem for us

### 05-missing-serial-methods

- sample delivery
	- level of support from facilities
		- at XFELs normally staff provide significant support during expt (exception: SACLA)
		- lower to minimal staff involvement at SR expts, incl user independent and remote operation capabilities
		- responsibility of facility staff to improve reliability and usability of sample delivery hardware, not users
			- room for improvement with automation
			- GUIs preferable to command line controls for e.g. timing, configs
			- setup and tear down, alignment, config, etc. need improvements in accessibility and efficiency
		- MFX operated autonomously (mail in data collection mode) during COVID -- lessons for using (dead) time efficiently and having fixed target samples ready as backup in case of failure with main sample
	- very often the limiting factor in beam time success
		- extra critical to be reliable for XFELs because of scarcity of beam time (and potentially of sample itself)
		- extra difficult for time-resolved experiments
		- pre-expt testing for sample delivery is critical
			- how to test as close as possible to beam time conditions can be a challenge
			- determine optimal tradeoff between homogeneity and sample amt (e.g. sample loss by filtering)
				- heterogeneous samples (sizes of microcrystals) can be problems for delivery but also for rxn initiation, limited by diffusion rate for mix-and-inject setups
	- typical modes are jets, tape drives, and fixed targets
		- make use of existing high throughput sample deliv infrastructure
			- more reliable sample deliv allows room for more ambitious changes elsewhere in the expt design
		- fixed target expts sink a lot of time into alignment and cameras for this are not great
		- options vary by beamline and facility, and vary in suitability to a given experiment
			- standardized, reliable hardware available for mix-and-inject at CHESS
			- BioCARS can do 10 Hz rep rate mix-and-inject expts with GDVN
			- LCLS prioritizes providing many options incl supporting user-designed and -built systems, and allows customization of beamline setup to accommodate
		- standardization desired but may be at odds with adaptability to new expt designs
			- not at scale to outsource most of this stuff to companies and mass produce
	- new types of experiments
		- acoustic droplet ejection an emerging and promising alternative
		- LAMA mixing method for expts on very fast time scales
		- journal Frontiers in Struct Bio highlights many cases of new expt capabilities by virtue of beamline and light source upgrades (not entirely sure where/if this point fits)
		- multidimensional expts (incl varying env conditions like temp, pressure, pH, E field)
		- multimodal expts (esp SX + spetroscopy, but also NMR, MD, QM/MM, EM)
		- control sample env closer to physiological: temp, humidity
	- shipping samples to facility is also source of problems
		- esp for samples prepared in only very small amounts
		- esp for samples that are easily damaged in transit
			- SSRL has specialized container to limit this -- temp controlled and compatible with standard microplates for fixed target among other methods, also can be used at MFX
		- things also get held up at customs, damaged, lost, or destroyed by courriers
			- some kind of connection with customs agents would be helpful for avoiding these predictable problems and unnecessary sample degradation/destruction
			- must ship samples early enough to ensure they arrive on time
			- if samples can't survive shipping (or survive only a very short time), prepare on site instead
				- possible compromise: ship seeds and crystallize from seeds on site
		- Ctr for Struct Dynamics in Biology (NIH supported collab) working on this problem
- repetition rate
	- XFEL upgrades such as LCLS-II to kHz may not be useful for (bio) xtallog
		- more useful for small molecule and chemical xtallog w/ no sample bottleneck
- outreach and documentation
	- must address the "decision tree" of choosing expt design to match scientific question, and make clear the use cases for serial SR xtallog
		- general user community not fully aware of all options available (incl sample deliv)
		- both outreach and routine participation of beamline staff in expts should address this better
		- would it be possible to compare hypothetical electron densities achievable by SR vs XFEL with a sufficiently comprehensive comparison of results by these methods so far? could help users choose most appropriate method for an expt
	- serial at SR should be leveraged as a low barrier entry point for introducing new rschrs to serial xtallog, even if they eventually need XFEL time
	- users should be introduced to static serial xtallog before time resolved (and this should dovetail with stepwise increasing expt complexity)
	- users should understand sample consumption for the sample deliv methods they use, incl how to ensure sample is used effectively during expt
	- feedback systems necessary on sample delivery as well (are droplets ejecting, are timings aligned, are there xtals in droplets, etc)
	- users report communication from beamline staff and method developers is a weak point for serial

### 06-learn-chemical-crystallography

- indexing from small number of reflections reqs different approach than macromolecular xtallog
	- long standing problem in small molecule, and much harder with stills
	- several available methods with different strengths/weaknesses -- work well enough but much room for improvement
- R-factor gap between serial and rotation very noticeable for small molecule (10-15% vs 3-5%)
- capability to do serial small molecule at all is very exciting
	- previously limited to powder diffraction
	- aim for a "xtallog service" with mail-in samples for chem and matsci types of sample
		- viable b/c they are much less sensitive than bio to env conditions once prepared
		- samples can typically be prepared in large amts and are robust to much more rad damage, so can take advantage of higher frame rates than MX
			- also often do cool things on very short time scales
		- could accommodate many samples (potentially from many labs) in a single beam time
		- accessibility of this should be strong driving factor for adoption of serial xtallog
	- generally aim for 0.8 Angstrom resolution
- further recent developments
	- E-field, laser, gas initiated rxns for fixed target serial SR
	- advancing detector technologies, enabling e.g. 10 ns time resolution between frames for single-pump, multi-probe expts
	- small wedge serial has some advantages, some disadvantages compared to stills
		- wedges mean longer expt duration
		- higher hit rates and indexing rates when rotating through full spots
	- hardware inherited from protein serial xtallog so far, but worth specializing some to small molecule serial at this point -- need grants for this
- possibly extract some more points from Q&A section (mostly minor or standalone points)

### 07-modeling-photons

- predicting still diffraction patterns not a solved problem
	- manifests in R-factor gap between stills and rotation data
	- recent efforts to improve this for both XFEL and SR use cases
	- physical parameters to consider
		- mosaicity (more important for serial)
			- how to model mosaicity -- many options, complex problem
				- minimum: mosaic block size and angular spread
				- optionally extend scalars to matrices (aniso model)
				- must also avoid overparameterizing 
				- empirical vs theoretical approaches to modeling
					- empirical can fold in physics we don't understand yet
					- theoretical may be important for isolating and understanding sources of error
		- further heterogeneity among crystals in a batch
		- diffuse scattering
		- background (harder for serial)
		- noise (harder for serial)
- ultimately unknown what physical param(s) we are not modeling adequately
- approaches for improving modeling
	- comparing among pairs or sets of related datasets
	- increasing multiplicity to accommodate increasing number refined params
	- possible application of ML to uncover trends or build black box models
	- simulations useful for attempting to reproduce experimental data
		- esp for simulating anomalous differences, potentially on same scale as differences across datasets in a time series
	- better modeling of Bragg peaks for more accurate integrated intensities
		- ray tracing vs empirical approaches
			- empirical has greater potential to correctly handle unknown physics, if that's a real limiting factor
		- at one extreme, fitting a peak shape to each spot
		- different approaches in DIALS vs CrystFEL currently
- postrefinement aims to correct partiality after idx, int
	- most postrefinement methods adapted from rotation crystallography
	- iterative approaches favored, algorithms vary
	- shot-to-shot differences in XFEL expts typically more dramatic than serial SR
	- does not always improve data quality -- tends to improve good datasets but not rescue poor ones
		- poor quality datasets may be unrescuable for reasons of other sources of error
	- still lacking robust figure of merit
		- Rsplit, CC1/2, anom peak height, Z-score, and autobuilding outcomes all currently used as indicators of data quality
	- may have better luck solving the problem experimentally by increasing bandwidth, thus decreasing magnitude of partiality error and correction
	- may be able to leverage pixelwise data
		- new implementation of Careless working on this w/ unmerged SF amplitudes, random atom starting model for phases, max likelihood optimization, yielding per-image partiality corrections

### 08-stopping-publishing

NO TEXT ON GITHUB

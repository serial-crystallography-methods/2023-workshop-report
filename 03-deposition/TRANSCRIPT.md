Transcript

Moderator: Aaron Brewster

Panelists:
Graeme Winter
Herbert J. Bernstein
Asmit Bhowmick

Note taker: David Mittan-Moreau

Aaron B: Topic Aaron loves and enjoys
Question: What are the challenges when depositing multi-modal data from serial experiments, such that the deposition aligns with fair principles?
Used to be nice to talk about, now will be apart of funding requirements
CXI 81 database. Only AB deposition that adheres to FAIR principles. Wikipedia page, commands how to reproduce everything. Way to hard, too much work. Intractable for subsequent publications. How to bring multimodal data to be senthezied to be reproducible.

Asmit B: Data sharing and FAIR principles.CXI DB 215. Upload raw data for datasets. 10 datasets 7 experiments 2 light sources. Considerations from the deposition process:
Metadata, mask or detector are not in the raw data. Have to assemble yourself. Can data formats be made to adhere to fair.
How can raw data be annotated? Spectra, multi-detector data. Spectroscopic data along with MX data - how to deposit so the user can figure out what happened
Uploading only select data?
How to connect structural data with raw data.

Herbert B: Downsided from 5,000 sft to 2,000 house. What doesn’t fit? THis is the model of handling data. We have too much data. We cannot keep all of it. Holton suggested should we should look seriously into lossy compression years ago. Others are in bigger trouble than use. High-energy physicists and astronomers have more data. Their solution is simple: throw away almost everything. Make a predetermined decision about what data is worth considerging with FPGA’s. Astronomers are more adhoc, throw away data and do lossy compression. We need to decide what data to keep now. US and European sources have legally said we need to keep all of it. We need to decide what we need to keep. PDB decided we need to keep the structure factors. We decided we need to keep all of our raw data. Need to get rid of the idea that we need to bring all the data to one place. If that place fails, wee loose all data. Keep three data places, three backups. 

Graeme W: What do we keep and throw away. Look at # collected and # eposited. Just a teeny fraction. What we could focus on is what we save is actually useful. The metadata that belongs with the data that allows us to reuse it needs to be captured at the point of experiment. Depositors don’t know what beamline that they collected data on. Beamline scientist, # of PDB entries or publications that come from your beamloine is very important and that needs to get right. If you are going to save it, it needs to be usefully saved. The most expensive thing about saving raw data is annotation. The person who is reading the PDB files making sure they are sane, correct, and belong to a publication. We need somebody who can look at the raw data and make sure it actually corresponds to what it is supposed to. Storing the data is less than 50% of the cost (small molecule crystallographer) annotation is a huge human cost. Annotation == verification by a human being. Technology of storing data is easy. Paying someone to do it is hard.

Aaron B: Stephen burley talk at ACA. Har numbers on costs $400 to deposit structure. $11 to maintain it per year. Cost to replace PDB from scratch: $20 billion in total. Why save raw data at all?

Graeme: Useful to make raw data public to reproduce data from nothing if there is a question about structures. PDB redoo … Same in small molecule world. 

Dan Paley: Herbert mentioned issue with only storing structure factors:

Herbert: If you only store structure factors, not sure that you can reproduce results. Because those are determined from Bragg reflections. Need to keep the primary data. US decided to require that anything done on government funds, you must, with no embargo, make the paper, data, open access must be available immediately. Some of what they asking for is impossible. Political decision has been made. Time to ask for something less draconian. Physicist have decided to throw away some of the raw data. 

Aaron B: what will enforcement look like

Herbert: Make examples. Will make it impossible for scientists to obtain government funds.

Derek M: WIll storing unmerged intensities sufficient. More import to reproduce experiment. GO back to remaking the diffraction patterns vs. just reprocessing

Asmit: Why store raw data. Need to come up with new ways to process data, needs raw data. Don;t want to reproduce experiments. Raw data is not going to change. Incentive to encourage new methods

Graeme W: We can achieve mush of that from save only some data, like from high-profile cases. Some people store methods like how to crystallize, this is not reproducible. Moving buildings makes crystallization in reprodducible. Not everything is directly reproducible. 

Aaron B: What is the minimal data we need to deposit:

Dan P: Need to supply the Unit cell for integration. If this wrong, the integration is wrong. THis will be really bad for small molecule crystallography.

Thomas W. Save only indexed frames. Will comply with new requirements. THis will give huge reduction in data. We could process that much data on laptop.

Aaron B: When should we save diffraction frames.
Tom W. What happens when you minimize what you save. I find it embarrassing that we do not reject blanks. This should be done but we don’t.

Aaron B. Does anyone disagree that we should only save the indexed frames.

Herbert : I disagree. We do not know what frames are indexable until they are indexed. Idea behind White house order: Any third party can pick up from where you were. Decision about what blank frames to throw out is hard. Need an agreed algorithm like the physicists.

James BE: ???? mised what was said

Graeme: Agree with James, but push back harder. If frames are blank, they contain no data. If they are blank. If they are not blank, they contain no signal. What pixels contribute to this deposited structure is well defined. Need to deposit the data and what you did. Software versions and settings. Deposit that and anyone can get to the same conclusions. Not that anyone can improve on your work, need to deposit enough to reproduce work.

Aaron B: We are making a report. Graeme: Make reproducible. Herbert: Need to deposit raw data. Aaron, five years ago keep all the images. Now adding minimally indexing images can actually hurt data. Adding them to dataset hurts results. I kinda think that routine Serial, if I can index an image with default parameters, depositing those images would be sufficient. Is it everything or nothing. Or something in between. GO.

Derek M. Information content of pixels What fraction of pixels ere meaningful for determine structure. What fraction of pixels within a spot were meaningful

Graeme: Something about Randy Read …

Kara Z. THere is a lot of information that can be determined from blanks regarding hardware work. A lot of information that is not diffraction. If trying to optimize sample. How are bad images bad? And how to use that information to improve those samples. 

Dan P: He will speak up for the useable frames. Keeping all the frames might be a small increased cost

Jeney W. Blank patterns are important for characterization. Very useful information. If you get diffraction and it is clearly diffraction. DOn’t need to extract more information. In cases where you on’t have information. Need to pull out information out of background like diffuse scattering.

Asmit B: What has the PDB done which is the accepted standard. Don’t deposit all structure factors. Cut at a certain resolution. That was a decision made by scientist. Do we deposit data to reproduce it by a third party? Everything else we are discussing, need to look at legal documents by funding agencies.

Herbert B. Currently processing data. Experimental lossy compressions. Just happens that at 150 to 1, getting good statistics. 200 to 1, getting non-indexable images. 200 to 1 then also reduces resolution of data set. Decision from whitehouse is that this is also a DEI decision that all researchers start at the same position.

Daniele De Sanctis: Lossy compression. Something about we can get good compression.

Graeme W. Going back to previous question. Quest to define something absolute. Saving in the sense of keep or reject, vs what goes into the archive in the long game. What goes into the archive: What is needed for reproducing.

What is the value of keeping this data. We always decide what we keep and throw away. We can’t write down the formulasim for that. But every pixel contributing to the publication needs to be record. His interpretation of Herbert’s comments is that we must store lossless compressed data.

Nick Dev. Is there a reference to this text. The discussion about theoretical extremes, not what is in the text. Does not think we should do lossless compression. If we do, then we should just store integrated reflections.

James Holton. We are using lossless compression because we are using frames. We don;t record the timing that photons arrive. Using images is throwing away data.

Aaron B: I have heard these arguments, but what seems different is that this might affect policy and we need to get this wright.

Graeme: We have already failed. THere is no right answere

Aaron: Fair are guidelines not rules. Is there a statement we can write that summarizes what we are doing. 

Graeme: We store all the data used to derive publications. Indexed frames, meta data, parameters used, software versions, and log-files.

Aaron: Comments on that statement;

Asmit: I agree

Herbert: Small caveat, subject to funding being provided. What ever we commit, there should be funding to do it.

Dan P: Still having a hard time throwing out only indexed frames. By publishing it, this is sample of interest. Not indexable frames, there is a high likelihood that something might be of interest. Maybe there is something else interesting in the data.

Jeney: I don’t think I need to force others to keep data because I might be interested in something else their results… 

Derek M>

Graeme; Conter example from boring routine crystallography. Collect 30 data sets of the same crystal. Do I deposit one structural dataset, or all of them? Just in case that someone else might be interested in the other cases.

Jeney: Non-isomorphous dataset, pick the best data, there might be different polymorphs of other interesting stuff. Throwing out important data, that hurts. I don’t know what the answer is, I don’t want to force them to keep data they don’t want.

Aaron B: Not able to index all frames, we might be able to in the future. - small molecule

Kara Z: Solution scattering XFEL??? Whati is the plan for all of the data???

Asmit: Add to what Jeney said. WHo does the data belong to. If the US says, the data belongs to…. Is the burdon of work on the user or facilities (for storage). Who does the data belong to???

Art L: Need to save data to reproduce experiment. But all the discussion was about doing a different experiment. What is more important, why are we doing this. To reproduce the exact same reprocessing, or do something different, a different experiment.

Fabio D. A. WHere to store and publish data. Feasibility of reuse by the average user. It is not for everyone easy to download or redo the processing. Need compute resources for reproduction.

Aaron B: Who is responsible fore data is a. Facilities are in charge of data (EU). In US, it is up to the users. THis will be a session at the ACA next year. Who is responsible for the data

Graeme: WHo is paying for it. Diamond is paid to archive the data at the Atlas data store. They do not guarantee that you can recover the data. If the tape is damaged, too bad.

Aaron B: isn;t this discussion moot, we just store on tapes;

Nick D. Also obligated that diamond will release the data.

Graeme: Not about curation, or FAIR, just storage and recovery

Dan P: Just because we can dump 300 TB onto a tape, that isn’t useful because no one can download that much data

Aaron: LCLS tape storage description …

Dan P: I meant as an interested third party. If the data is a needle in haystack, what is the value

Asmit: Response to Dan: Third pater is software companies interested in AI training.

Dan: Yeah, will be Google

Aaron: We will write something as the organizing committee. Are we going to send it around to everyone

Jeney: Discussion point for tomorrow.

Aaron: TOpic of research

Aaron: Multimodal data, what is going on in the PDB, New keys in the PDB. Start with multimodal data. How do I deposit archived of combined spectroscopy and x-ray diffraction. NEXUS.

Graeme: How do we capture it so it is useful. How do we makesure that it captured in a way that is useful. Fix the problem upstream. Allen Orville, once a month, bends his ear on this topic. Fix this issue upstream, then it should go through to the archive

Iris: Look up table at minimum, but like Graeme’s idea better. All in the same place from the start would be very useful

Herbert: Very simple: Aaron is right. NEXUS application definitions and package multi-modal data into common NEXUS files. Need IUCR to get common dictionaries. Dictionaries plus nexus.

Aaron: Multimodal data in NEXUS is very powerful. Can synchronize data between experiments.

Cheghua: PDB programer, creator, analyst. PDB trained people working on curation. Focus on how we collect metadata and how to make it easier and more accurate. Aaron is working on what data is recorded. I am talking about what we are doing now. Shared screen - OneDep website. There is a way to deposit metadata for serial crystallography experiments on OneDep. People tend to skip the information and leave this empty. If they can get log-files to extract this information, He has log-files from cctbx.xfel to get information about ata processing statistics. This will be so the users just need to deposit log-files, not input information.

Aaron B: New work from the committee that not everyone knows about. Everyone defines mosaicity differently. Makes common definitions for mosaicity, unit cell distributions. New PDB terms that need to record and synchronized with the PDB.

Asmit: Is it possible to automate the inputs so it doesn’t need to be input manually. Not uncommon that softwares have discrepancies, for example, bulk solvent definition. 

Aaron B: This is okay. Different is better than nothing.

Chechua: two approaches. 
1: In future when data is processed, everything will be recorded and ready for deposition. Long-term goal
2: Short-term. Every program has different logs, and even different logs within dials. 

Eike Schulz: A major pain is depositing PDB data. It is such an effort because it is within a web interface. We have 20 structures of the same protein. Have to go through this over and over again. Would be much simpler if there is an xcel template where things can be uploaded. 

Chenghua: There are ways to do this. COmmand line and webtool. There is also groupdep, and RSCB service. 

Aaron B: closing…


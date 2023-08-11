# Methods for Serial Crystallography Workshop Report

## Introduction

This is a report on workshop held at Cornell University, Ithaca, NY 17th-21st July 2023. The focus of the workshop was principally identifying the gaps between the methods which are in place today and what is needed to make serial crystallography a useful tool for the routine user, a task which will become increasingly important over the coming years, as the changes to the field brought about by developments such as alphafold (FIXME CITE) come to fruition.

### Background: X-ray Crystallography

Over the past four decades X-ray crystallography of biological macromolecules has come to define the "gold standard" in structural biology. The ability to determine the configurations of proteins has brought about a revolution in medicine, allowing the functions of proteins to be understood on an atomic level and giving rise to the capability to design drugs based on this knowledge. The benefit to medicine of this technique is hard to overstate, and the development of methods behind X-ray crystallography continues to accelerate with the development of brighter sources, faster detectors and new experimental modalities, allowing for example screening of proteins against large numbers of small molecule fragments to steer the development of future drug candidates.

This focus on X-ray crystallography has been immensely successful, first populating the Protein Data Bank with annotated protein structures, then with the advent of the Protein Structure Initiative attempting to populate the full space of likely "folds" such that subsequent protein structure determination can use these as a starting point in determining the structure of novel proteins. Two years ago this came to fruition with the development of alphafold, a deep learning based tool, which was trained on the content of the PDB to predict protein folding. While this is not yet a universal tool, and does not give "gold standard" results, it is often sufficient to give a decent starting point for the structure determination process, such that a reasonable quality native X-ray data set is sufficient to determine and validate the structure of a protein.

With this in mind, the field as a whole is faced with a challenge: given the efforts to automate data acquisition and structure solution for biological crystallography, have we methods and technique developers put ourselves out of a job? The answer would appear to be no, instead we have opened up a new realm to explore, in the form of _dynamic_ crystallography.

### Dynamic / Time Resolved X-ray Crystallography

For a long time the atomic coordinates for a protein were considered necessary and sufficient to infer the functional mechanism of a protein. In many cases this was true, allowing the development of a wide range of useful drugs which focus on these mechanisms to prevent diseaase. In some cases, however, the precise process through which a protein functions is of particular interest, perhaps best illustrated by the work on Photosystem II (FIXME CITE). Here there is not only interest in the structure of the protein but also in the intermediate states, from which the detail of the process may be derived. A number of different techniques exist to capture such processes, but the method which has come to the fore over the past decade is that of time resolved serial crystallography, where single diffraction images of small crystals of proteins are captured at specific time points (e.g. some period after activation by a laser pulse). The overall process is derived from large populations of such images, taken at a range of different time points each from a new crystal, with the non-trivial challenge of combining all the data from all the time points, taking into account sample to sample and shot to shot variation.

At the time of the workshop undertaking a time resolved study of a biological process by serial crystallography is a serious undertaking. The majority of experiments taking place at X-FEL facilities are run by consortia of scientists, some focusing on the sample delivery, others on live data analysis, still others on guiding the experiment by looking at the processed results. This commitment makes the technique inaccessible to the majority of science groups, and also limits the insight which can be obtained from the use of instrument time. Reducing this commitment would help to open up time resolved and serial methods to a wider community, helping to take structural biology forward.

### Workshop Focus

The focus of the workshop is in reducing the barriers listed above, to democratize access to time resolved and serial methods to a broad community of non-specialist structural biologists. As the scope is potentially very broad (for example, also handling of huge populations of rotation data sets) we made the choice to focus _this_ workshop on the acquisition and analysis of single / still shot data.
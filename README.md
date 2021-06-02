# Methylation in plants grown outdoors

An experiment to disentangle maternal- and offspring-environmental effects on cytosine methylation in *Arabidopsis thaliana*

See also the github repository at https://github.com/ellisztamas/dogging_expt and the notes on [eLabJournal](https://vbc.elabjournal.com/members/experiments/browser/#view=xperiment&nodeID=231392&page=0&userID=20538&status=0&column=created&order=DESC&search=).

## Contents

1. [Design](#design)
	1. [Premise](#premise)
	2. [Experimental set-up](#experimental-setup)
		1. [2019 field experiement](#2019-experiment)
		2. [2020 field experiement](#2020-experiment)
	2. [Sample processing](#sample-processing)
3.  [Data](#data)
4. [Dependencies](#Dependencies)
5. [License](#license)
6. [Author information](#author-information)
8. [Acknowledgements](#acknowledgements)

## Design
### Premise

The methylome is remodelled during spermatogenesis, zygote formation and germination. We suspect that these processes depend to some extent on environmental conditions that is not captured by growing things in laboratory growth rooms. This experiment aims to disentangle the effect of maternal and offspring environments on cytosine methylation by first growing plants in outdoor field experiments at the High Coast in Sweden, then resowing their offspring together with seeds grown at GMI at the same site, and comparing methylomes of the two cohorts. In parallel, we will also grow field- and GMI-matured seed in growth rooms, allowing us to disentangle the effects of where seed matured and where it was grown.

![ ](/groups/nordborg/projects/epiclines/003.dogging_expt/004.output/experimental_design.png  "Overview of the experimental design")

There are two sub-experiments that use different genetic material:

1. A panel of 10 accessions from the 1001 genomes collection.
2. Plants derived from crosses between (southern) Swedish accessions differing in their TE load.

### Experimental setup

We grew plants in a field outside of Såltea (62°54'10.7"N 18°08'07.4"E). We did not find *A. thaliana* living there already. See `006.reports/Saltea experimental set up 2020.docx` for details of setting the experiments up. Sowing was done at Mid-Sweden University in Sundsvall.

* June 2019: count seeds to eppendorf tubes
* August 2019: sow seeds to soil
* June 2020: harvest seeds in paper envelopes (Svante Holm)
* August 2020: sow second generation (Svante Holm)
* October 2020: harvest whole rosettes (Svante Holm)

#### 2019 experiment	
Notes on this experiment on eLabJournal can be found [here](https://vbc.elabjournal.com/members/experiments/browser/#view=experiment&nodeID=226872&page=0&userID=20538&status=0&column=created&order=DESC&search=).
Randomisation is done with `003.scripts/randomisation_Aug2019.csv`.

There are two separate cohorts to be sown into 15 trays of 6x11 wells:

1. Ten accessions of natural lines from the 1001 genomes collection. Each column of 11 wells contains one plant from each accession plus an emplty well. Trays 1-9.
2. Ten F1 familes (5 crosses in each direction) plus parental lines. 6 trays. Each cross or parent is randomised within 2 columns of each tray, with two empty wells.

#### 2020 experiment
Notes on this experiment on eLabJournal can be found
[here]( https://vbc.elabjournal.com/members/experiments/browser/#view=experiment&nodeID=231392&page=0&userID=20538&status=0&column=created&order=DESC&search=). Randomisation is done with `003.scripts/randomisation_Aug2020.csv`.

There are three experiments:

1. Four F2 families plus five selfed offspring (S2) from parental lines. Each tray contains 14 of each F2, one of each S2, and one blank cell. These are trays 1-14.
2. Randomised over six trays (trays 15-20):
	- 15 plants of the 10 natural accessions from the 2019 experiment. Each plant is taken from a different mother.
	- 15 plants of the same genotypes from the 2017 1001-genomes stock
    - 10 plants from 3 mothers from each of 3 wild populations collected by Svante in July 2020.
	- 6 blank wells
3. A repetition of cohort 2 because germination was very poor. Trays 21-26.

Because of Covid-19, Svante Holm set this experiment up. He reported that germination was initially very poor, which maybe because they did receive sufficient water, or that they got very hot on Svante's terrace (in previous years seedlings germinated at Mid-Sweden university). Svante was able to save the F2 plants by transplanting seedlings from wells with more than one seedling in. For the natural accesions and wild lines I sent new seeds to Svante on 27th August and he repeated the experiment.

### Sample processing

* I could not travel to Sweden in 2020, so Svante Holm collected seeds in June into paper envelopes and posted to me. I then sorted and packed seeds for the next round, which Svante resowed in August and harvested in October.
* See `006.reports/Protocol for tissue collection.docx` for details of harvesting tissue.
* We shipped tissue from Sundsvall to Vienna on dry ice with the company World Courier.
* I plated two or three leaves from tissue collected in October 2020 on dry ice and passed there to Viktoria Nyzhynska for sequencing.
	* From trays 21-26:
		* 5 plants per 1001G accession from the field-matured plants
		* 5 plants per accession from the stock seeds
		* 4 plants from each of the nine wild maternal families
	* From trays 1-14:
		* Every plant I could find for the cross 8249x1158

## Data
Pending.

## Dependencies

### Processing raw reads

* [methylseq](https://github.com/rbpisupati/methylseq)
* [nf-haplocaller](https://github.com/Gregor-Mendel-Institute/nf-haplocaller)
* [Nextflow pipeline for SNPmatch](https://github.com/rbpisupati/nf-snpmatch)
* [methylpy](https://github.com/yupenghe/methylpy)


## License

Released under the MIT license. See LICENSE for full details.

## Author information

* Principle investigator:
> Magnus Nordborg. Gregor Mendel Institute of Molecular Plant Sciences, Austrian Academy of Sciences, Doktor-Bohr-Gasse 3, 1030 Vienna
* This repository:
> Tom Ellis (thomas.ellis@gmi.oeaw.ac.at)
* Field work: Tom Ellis, Svante Holm, Magnus Nordborg, Mia Holm, Edit Holm
* Preparation of DNA extractions and sequencing libraries: Viktoria Nizhynska

## Acknowledgements

Thanks to Daniele Filiault and Pieter Clauw for helping setting the experiments up
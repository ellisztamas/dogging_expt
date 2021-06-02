# Maternal- and offspring-environmental effects on cytosine methylation in *Arabidopsis thaliana*



## Contents

1. [Design](#design)
	1. [Experimental design](#experimental-design)
	2. [Analysis workflow](#analysis-workflow)
3.  [Data](#data)
	1. [Raw data](#raw-data)
	2. [Derived data](#derived-data)
4. [Dependencies](#Dependencies)
5. [License](#license)
6. [Author](#author)
7. [Support](#support)
8. [Acknowledgements](#acknowledgements)

## Design
### Premise

The methylome is remodelled during spermatogenesis, zygote formation and germination. We suspect that these processes depend to some extent on environmental conditions that is not captured by growing things in laboratory growth rooms. This experiment aims to disentangle the effect of maternal and offspring environments on cytosine methylation by first growing plants in outdoor field experiments at the High Coast in Sweden, then resowing their offspring together with seeds grown at GMI at the same site, and comparing methylomes of the two cohorts. In parallel, we will also grow field- and GMI-matured seed in growth rooms, allowing us to disentangle the effects of where seed matured and where it was grown.

![ ](/groups/nordborg/projects/epiclines/003.dogging_expt/004.output/experimental_design.png  "Overview of the experimental design")

There are two sub-experiments that use different genetic material:

1. A panel of 10 accessions from the 1001 genomes collection.
2. Plants derived from crosses between (southern) Swedish accessions differing in their TE load.

### Experimental design

We grew plants 

### Sample processing

* What did you do with samples after harvesting?
* Where are they stored?

## Data
### Raw data

* Raw data refers to data collected from experiments or raw sequencing reads.
* These data should be stored in the `/groups/nordborg/raw.data` and should be read only, even to you.
* You can make the system behave as if your data was in your project foler by creating a 'soft link' from your project folder to the raw data file. For example:
```
ln -s /groups/nordborg/raw.data/athaliana/dna/my_raw_reads.bam /001.data/001.raw/my_raw_reads.bam
```

### Derived data

* Describe what pipelines or scripts were run on the raw data, where the scripts are to run them, and where the output is saved.

## Dependencies

List the R/python/other packages needed to run the analyses, along with version numbers. If you have used an environment file, mention that.

## License

For example:
> Released under the MIT license. See LICENSE for full details.

List any information about embargoes on the data.

## Author information

This repository: Tom Ellis (thomas.ellis@gmi.oeaw.ac.at)

Generally, give the names of those involved in data collection, processing, analysis and supervision.

## Acknowledgements

Thank anyone who is not an author, but deserves mentioning.
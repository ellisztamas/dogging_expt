# Files relating to experimental setups

## `dogging_pedigree.csv`

File describing relatedness between individuals in the dataset.

- **id**: Unique ID for the individual with three separate parts:
	1. A letter indicating parent (P), offspring of a cross (F), or the selfed offsrping of a parent (S), followed by the generations
	2. Unique ID for the family.
	3. Unique ID for the individual within that family.
- **mother**: ID of the mother
- **father** ID of the father
- **genotype**: Accession code, or codes of the parents of the cross
- **generation**: generation number.
- **site**: where the plant was grown
- **Sown**: sowing date

## `randomisation_Aug2019.csv`

Positions of plants in the field experiment sown in 2019. This is created with `003.scripts/randomisation_Aug2019.csv`. This ought to be the same structure as `001.data/002.field_data/saltea_generation1.csv` except that the latter has plant IDs and harvest notes.

## `saltea2_*_randomisation*.csv`

Three files giving positions of plants in the field experiment sown in 2020. These are created with `003.scripts/randomisation_Aug2020.csv`. This ought to be the same structure as `001.data/002.field_data/saltea_generation2.csv` except that the latter concatenates these files, includes plant IDs and information on sequence plates.

1. `saltea2_F2s_randomisation.csv`: Four F2 families plus five selfed offspring (S2) from parental lines. Each tray contains 14 of each F2, one of each S2, and one blank cell. These are trays 1-14.
2. `saltea2_purelines_randomisation.csv`: Randomised over six trays (trays 15-20):
	- 15 plants of the 10 natural accessions from the 2019 experiment
	- 15 plants of the same genotypes from the 2017 1001-genomes stock
    - 10 plants from 3 mothers from each of 3 wild populations collected by Svante in July 2020.
	- 6 blank wells
3. `saltea2_purelines_randomisation_cohort2.csv`:A repetition of cohort 2 because germination was very poor. Trays 21-26.

	
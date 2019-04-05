#!/bin/bash

for g in grch37 grch38
    do

        echo " "
        echo " "
        echo " ********************************************************************** "
        echo " "
        echo $g

        v=ascat_acf_ploidy.tsv
        q=ASCAT_Purity_Ploidy
        f=gs://khyati_cosmic_v87/$g/$v
        j=v87/$g/$v.json
        t=cgc-05-0006:COSMIC_v87_$g.$q

        echo $v
        gsutil cp v87/$g/$v $f
        echo $f
        gsutil ls -l $f
        echo $j
        ls -l $j
        echo $t
        bq load -q \
            --source_format=CSV \
            --field_delimiter='\t' \
            --skip_leading_rows=1 \
            --replace \
            $t $f $j 

        echo " "
        echo " "
	
	 
        v=cancer_gene_census.tsv
        q=Cancer_Gene_Census
        f=gs://khyati_cosmic_v87/$g/$v
        j=v87/$g/$v.json
        t=cgc-05-0006:COSMIC_v87_$g.$q

        echo $v
        gsutil cp v87/$g/$v $f
        echo $f
        gsutil ls -l $f
        echo $j
        ls -l $j
        echo $t
        bq load -q \
            --source_format=CSV \
            --field_delimiter='\t' \
            --skip_leading_rows=1 \
            --replace \
            $t $f $j 

        echo " "
        echo " "

        v=classification.tsv
        q=Classification
        f=gs://khyati_cosmic_v87/$g/$v
        j=v87/$g/$v.json
        t=cgc-05-0006:COSMIC_v87_$g.$q

        echo $v
        gsutil cp v87/$g/$v $f
        echo $f
        gsutil ls -l $f
        echo $j
        ls -l $j
        echo $t
        bq load -q \
            --source_format=CSV \
            --field_delimiter='\t' \
            --skip_leading_rows=1 \
            --replace \
            $t $f $j 

        echo " "
        echo " "

        v=CosmicBreakpointsExport.tsv
        q=Breakpoints_Export
        f=gs://khyati_cosmic_v87/$g/$v
        j=v87/$g/$v.json
	t=cgc-05-0006:COSMIC_v87_$g.$q

        echo $v
        gsutil cp v87/$g/$v $f
        echo $f
        gsutil ls -l $f
        echo $j
        ls -l $j
        echo $t
        bq load -q \
            --source_format=CSV \
            --field_delimiter='\t' \
            --skip_leading_rows=1 \
            --replace \
            $t $f $j 

        echo " "
        echo " "

        v=CosmicCompleteCNA.tsv 
        q=Complete_CNA
        f=gs://khyati_cosmic_v87/$g/$v
        j=v87/$g/$v.json
        t=cgc-05-0006:COSMIC_v87_$g.$q

        echo $v
        gsutil cp v87/$g/$v $f
        echo $f
        gsutil ls -l $f
        echo $j
        ls -l $j
        echo $t
        bq load -q \
            --source_format=CSV \
            --field_delimiter='\t' \
            --skip_leading_rows=1 \
            --replace \
            $t $f $j 

        echo " "
        echo " "

        v=CosmicCompleteDifferentialMethylation.tsv
        q=Complete_Diff_Meth
        f=gs://khyati_cosmic_v87/$g/$v
        j=v87/$g/$v.json
        t=cgc-05-0006:COSMIC_v87_$g.$q

        echo $v
        gsutil cp v87/$g/$v $f
        echo $f
        gsutil ls -l $f
        echo $j
        ls -l $j
        echo $t
        bq load -q \
            --source_format=CSV \
            --field_delimiter='\t' \
            --skip_leading_rows=1 \
            --replace \
            $t $f $j 

        echo " "
        echo " "

        v=CosmicCompleteGeneExpression.tsv
        q=Complete_Gene_Exp
        f=gs://khyati_cosmic_v87/$g/$v
        j=v87/$g/$v.json
        t=cgc-05-0006:COSMIC_v87_$g.$q

        echo $v
        gsutil cp v87/$g/$v $f
        echo $f
        gsutil ls -l $f
        echo $j
        ls -l $j
        echo $t
        bq load -q \
            --source_format=CSV \
            --field_delimiter='\t' \
            --skip_leading_rows=1 \
            --replace \
            $t $f $j 

        echo " "
        echo " "

        v=CosmicCompleteTargetedScreensMutantExport.tsv
        q=Complete_Targeted_Screens_Mutant
        f=gs://khyati_cosmic_v87/$g/$v
        j=v87/$g/$v.json
        t=cgc-05-0006:COSMIC_v87_$g.$q

        echo $v
        gsutil cp v87/$g/$v $f
        echo $f
        gsutil ls -l $f
        echo $j
        ls -l $j
        echo $t
        bq load -q \
            --source_format=CSV \
            --field_delimiter='\t' \
            --skip_leading_rows=1 \
            --replace \
            $t $f $j 

        echo " "
        echo " "

        v=CosmicFusionExport.tsv
        q=Fusion_Export
        f=gs://khyati_cosmic_v87/$g/$v
        j=v87/$g/$v.json
        t=cgc-05-0006:COSMIC_v87_$g.$q

        echo $v
        gsutil cp v87/$g/$v $f
        echo $f
        gsutil ls -l $f
        echo $j
        ls -l $j
        echo $t
        bq load -q \
            --source_format=CSV \
            --field_delimiter='\t' \
            --skip_leading_rows=1 \
            --replace \
            $t $f $j 

        echo " "
        echo " "

        v=CosmicGenomeScreensMutantExport.tsv
        q=Genome_Screens_Mutant
        f=gs://khyati_cosmic_v87/$g/$v
        j=v87/$g/$v.json
        t=cgc-05-0006:COSMIC_v87_$g.$q

        echo $v
        gsutil cp v87/$g/$v $f
        echo $f
        gsutil ls -l $f
        echo $j
        ls -l $j
        echo $t
        bq load -q \
            --source_format=CSV \
            --field_delimiter='\t' \
            --skip_leading_rows=1 \
            --replace \
            $t $f $j 

        echo " "
        echo " "

        v=CosmicHGNC.tsv
        q=HGNC
        f=gs://khyati_cosmic_v87/$g/$v
        j=v87/$g/$v.json
        t=cgc-05-0006:COSMIC_v87_$g.$q

        echo $v
        gsutil cp v87/$g/$v $f
        echo $f
        gsutil ls -l $f
        echo $j
        ls -l $j
        echo $t
        bq load -q \
            --source_format=CSV \
            --field_delimiter='\t' \
            --skip_leading_rows=1 \
            --replace \
            $t $f $j 

        echo " "
        echo " "

        v=CosmicMutantExportCensus.tsv
        q=Mutant_Census
        f=gs://khyati_cosmic_v87/$g/$v
        j=v87/$g/$v.json
        t=cgc-05-0006:COSMIC_v87_$g.$q

        echo $v
        gsutil cp v87/$g/$v $f
        echo $f
        gsutil ls -l $f
        echo $j
        ls -l $j
        echo $t
        bq load -q \
            --source_format=CSV \
            --field_delimiter='\t' \
            --skip_leading_rows=1 \
            --replace \
            $t $f $j 

        echo " "
        echo " "

        v=CosmicMutantExport.tsv
        q=Mutant
        f=gs://khyati_cosmic_v87/$g/$v
        j=v87/$g/$v.json
        t=cgc-05-0006:COSMIC_v87_$g.$q

        echo $v
        gsutil cp v87/$g/$v $f
        echo $f
        gsutil ls -l $f
        echo $j
        ls -l $j
        echo $t
        bq load -q \
            --source_format=CSV \
            --field_delimiter='\t' \
            --skip_leading_rows=1 \
            --replace \
            $t $f $j 

        echo " "
        echo " "

        v=CosmicNCV.tsv
        q=NCV
        f=gs://khyati_cosmic_v87/$g/$v
        j=v87/$g/$v.json
        t=cgc-05-0006:COSMIC_v87_$g.$q

        echo $v
        gsutil cp v87/$g/$v $f
        echo $f
        gsutil ls -l $f
        echo $j
        ls -l $j
        echo $t
        bq load -q \
            --source_format=CSV \
            --field_delimiter='\t' \
            --skip_leading_rows=1 \
            --replace \
            $t $f $j 

        echo " "
        echo " "

        v=CosmicResistanceMutations.tsv
        q=Resistance_Mutations
        f=gs://khyati_cosmic_v87/$g/$v
        j=v87/$g/$v.json
        t=cgc-05-0006:COSMIC_v87_$g.$q

        echo $v
        gsutil cp v87/$g/$v $f
        echo $f
        gsutil ls -l $f
        echo $j
        ls -l $j
        echo $t
        bq load -q \
            --source_format=CSV \
            --field_delimiter='\t' \
            --skip_leading_rows=1 \
            --replace \
            $t $f $j 

        echo " "
        echo " "

        v=CosmicSample.tsv
        q=Sample
        f=gs://khyati_cosmic_v87/$g/$v
        j=v87/$g/$v.json
        t=cgc-05-0006:COSMIC_v87_$g.$q

        echo $v
        gsutil cp v87/$g/$v $f
        echo $f
        gsutil ls -l $f
        echo $j
        ls -l $j
        echo $t
        bq load -q \
            --source_format=CSV \
            --field_delimiter='\t' \
            --skip_leading_rows=1 \
            --replace \
            $t $f $j 

        echo " "
        echo " "

        v=CosmicStructExport.tsv
        q=Struct
        f=gs://khyati_cosmic_v87/$g/$v
        j=v87/$g/$v.json
        t=cgc-05-0006:COSMIC_v87_$g.$q

        echo $v
        gsutil cp v87/$g/$v $f
        echo $f
        gsutil ls -l $f
        echo $j
        ls -l $j
        echo $t
        bq load -q \
            --source_format=CSV \
            --field_delimiter='\t' \
            --skip_leading_rows=1 \
            --replace \
            $t $f $j 

        echo " "
        echo " "

        v=CosmicTranscripts.tsv
        q=Transcripts
        f=gs://khyati_cosmic_v87/$g/$v
        j=v87/$g/$v.json
        t=cgc-05-0006:COSMIC_v87_$g.$q

        echo $v
        gsutil cp v87/$g/$v $f
        echo $f
        gsutil ls -l $f
        echo $j
        ls -l $j
        echo $t
        bq load -q \
            --source_format=CSV \
            --field_delimiter='\t' \
            --skip_leading_rows=1 \
            --replace \
            $t $f $j 

    done



use strict;
use Bio::Perl;
use Bio::SeqIO;

use Bio::Tools::Run::StandAloneBlastPlus;

my $fasta_input = Bio::SeqIO->new(
  -file => "psen1-orfs.fasta"
);

my $blast = Bio::Tools::Run::StandAloneBlastPlus->new(
  -db_data => 'swissprot',
);

my $i = 1;
while (my $seq = $fasta_input->next_seq) {
  my $blast_report = $blast->blastp(
    -query => $seq,
    -outfile => "./out-blast/psen1-orfs-" . "$i" . "-blast" . ".bls",
  );
  $i++;
}

$blast->cleanup();
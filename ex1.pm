use strict;
use warnings;
use Bio::SeqIO;
use Bio::Seq;

# Lee la secuencia de PSEN1 del archivo genbank
my $seq_obj = Bio::SeqIO->new(
  -file => "sequence-psen1.gb",
  -format => "genbank"
);
my $seq = $seq_obj->next_seq;

# Escribe la secuencia original pero en formato fasta
my $original_fasta_seq = Bio::SeqIO->new(
  -file => ">sequence-psen1.fasta",
  -format => "fasta"
);
$original_fasta_seq->write_seq($seq);


my $fasta_file = Bio::SeqIO->new(
  -file => ">psen1-orfs.fasta",
  -format => "fasta"
);


$fasta_file->write_seq($seq->translate(-frame => 0));
$fasta_file->write_seq($seq->translate(-frame => 1));
$fasta_file->write_seq($seq->translate(-frame => 2));

$fasta_file->write_seq($seq->revcom->translate(-frame => 0));
$fasta_file->write_seq($seq->revcom->translate(-frame => 1));
$fasta_file->write_seq($seq->revcom->translate(-frame => 2));
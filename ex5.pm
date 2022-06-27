use strict;
use warnings;
use Bio::SeqIO;
use Bio::Seq;
use Bio::Factory::EMBOSS;

my ($input_fasta) = @ARGV;

if (!defined $input_fasta) {
    die "Usage: $0 <input_fasta>\n";
}

my $seq_obj = Bio::SeqIO->new(
  -file => "$input_fasta",
  -format => "fasta"
);
my $seq = $seq_obj->next_seq;

my $factory = Bio::Factory::EMBOSS->new();
my $output_fasta = "./out-5/orfs.fasta";
my $output_patmatmotifs = "./out-5/ex5.patmatmotifs";

my $orf_app = $factory->program("getorf");
$orf_app->run({
  -sequence => $seq,
  -outseq => $output_fasta,
  -table => 1,
});

# primero hay que correr
# > sudo prosextract ./

my $patmatmotifs_app = $factory->program("patmatmotifs");
$patmatmotifs_app->run({
  -sequence => $seq,
  -full => "Y",
  -outfile => $output_patmatmotifs,
});

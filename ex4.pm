use Bio::SearchIO;
use Bio::DB::GenPept;

# Recibe el nombre del archivo de entrada y el patrón a buscar
my ($input_blast, $input_pattern) = @ARGV;

if (!defined $input_blast || !defined $input_pattern) {
    die "Usage: $0 <input_blast> <input_pattern>\n";
}

my $input_file = Bio::SearchIO->new(
  -file => $input_blast,
  -format => 'blast'
);

my $gb = Bio::DB::GenPept->new();

my $hits = 0;

my $pattern = lc($input_pattern);
my $output_dir = "./out-4/$pattern";

while ( my $result = $input_file->next_result ) {
  while ( my $hit = $result->next_hit ) {
    my $hit_description = lc($hit->description);

    if ($hit_description =~ /$pattern/) {
      # crea una carpeta donde dejar los resultados para este patrón
      mkdir($output_dir, 0700) unless (-d $output_dir);
      
      my $accession = $hit->accession;
      my $accession_seq = $gb->get_Seq_by_acc($accession);
      
      print "Hit: ", $hit->name, " | ", $hit_description, "\n";
      print "Sequence: ", $accession_seq->seq, "\n";

      my $accession_file_name = "$output_dir/$accession.fasta";
      my $accession_output_file = Bio::SeqIO->new(
        -file => ">$accession_file_name",
        -format => 'fasta'
      );
      $accession_output_file->write_seq($accession_seq);
      $hits++;
    }
  }
}

print "Number of hits: $hits\n";
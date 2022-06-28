use Bio::Tools::Run::Alignment::Clustalw;

@config = ('outfile' => "./out-msa");
my $factory = Bio::Tools::Run::Alignment::Clustalw->new(@config);

@seq_array =();

push_sequence("./msa-in/P49768.1.fasta");
push_sequence("./msa-in/Q5R780.1.fasta");
push_sequence("./msa-in/Q8HXW5.1.fasta");
push_sequence("./msa-in/P79802.1.fasta");
push_sequence("./msa-in/P97887.1.fasta");
push_sequence("./msa-in/Q6RH31.2.fasta");

sub push_sequence {
  my ($sequence_file) = @_;
  
  my $seq_obj = Bio::SeqIO->new(
    -file => "$sequence_file",  
    -format => 'fasta'
  );
  
  while (my $seq = $seq_obj->next_seq()) {
    push (@seq_array, $seq);
  }
}

@sequences_ref = \@seq_array;
my $aln = $factory->align(@sequences_ref);
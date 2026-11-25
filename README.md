# PDL::IO::Protobuf

Read and write [PDL](https://metacpan.org/pod/PDL) ndarrays from [Protobuf](https://metacpan.org/pod/Protobuf) messages and binary `.pb` files. Supports both file-based I/O (`rprotobuf`, `wprotobuf`) and in-memory message conversion (`from_protobuf`, `to_protobuf`) with automatic scalar type mapping and ndarray reshaping.

## Quickstart

```perl
use strict;
use warnings;
use PDL;
use PDL::IO::Protobuf qw(rprotobuf wprotobuf from_protobuf to_protobuf);
use My::Embedding::Vector;

# Serialize a PDL ndarray to a binary .pb file
my $vec = float([0.12, -0.45, 0.88, 0.31]);
wprotobuf($vec, 'embedding.pb', 'My::Embedding::Vector', 'values');

# Read back and reshape to a 2x2 matrix
my $matrix = rprotobuf('embedding.pb', 'My::Embedding::Vector', 'values',
    proto_type => 'float',
    dims       => [2, 2],
);

# Convert in-memory Protobuf messages
my $msg = to_protobuf($matrix, 'My::Embedding::Vector', 'values');
my $pdl = from_protobuf($msg, 'values', proto_type => 'float', dims => [2, 2]);
```

See [examples/quickstart.pl](examples/quickstart.pl) for a self-contained runnable tutorial, and run `perldoc PDL::IO::Protobuf` for the full API reference and tutorial.

## Installation

```bash
perl Makefile.PL
make
make test
make install
```

## License

the same terms as Perl itself.

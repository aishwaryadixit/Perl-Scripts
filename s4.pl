#!/usr/bin/env perl
use strict;
use warnings;

package Child;

use parent 'Parent';

Child->func ();
1;    # optional

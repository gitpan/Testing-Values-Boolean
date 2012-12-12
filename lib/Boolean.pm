#!/usr/bin/env perl
=begin LICENSE
+--------------------------------------------------------------------------------------+
| BSD-3 OSI License                                                                    |
+--------------------------------------------------------------------------------------+
| Copyright (c) 2012, Alexej G. Magura                                                 |
| All rights reserved.                                                                 |
|                                                                                      |
| Redistribution and use in source and binary forms, with or without                   |
| modification, `are permitted provided that the following conditions are met:         |
|                                                                                      |
| Redistributions of source code must retain the above copyright notice, this          |
| list of conditions and the following disclaimer.                                     |
|                                                                                      |
| Redistributions in binary form must reproduce the above copyright notice,            |
| this list of conditions and the following disclaimer in the documentation            |
| and/or other materials provided with the distribution.                               |
|                                                                                      |
| Neither the name of the owner nor the names of its contributors may                  |
| be used to endorse or promote products derived from this software without            |
| specific prior written permission.                                                   |
|                                                                                      |
| THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"          |
| AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE            |
| IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE           |
| ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE            |
| LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR                  |
| CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF                 |
| SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS             |
| INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN              |
| CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)              |
| ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE           |
| POSSIBILITY OF SUCH DAMAGE.                                                          |
+--------------------------------------------------------------------------------------+
=end LICENSE  
=cut 

package Testing::Values::Boolean;
use warnings;
use strict;

use Exporter;
use vars qw(@ISA @EXPORT);

our $VERSION = '1.2.6';
@ISA = qw(Exporter);
@EXPORT = qw(true True False false);

sub true
{ 
    if ( @_ )
    {
	if ( $_[0] eq 't' )
	{
	    return 't';
	}
	elsif ( $_[0] eq 'T' )
	{
	    return 'T';
	}
	elsif ( $_[0] eq '0' || $_[0] eq '#' )
	{
	    return 0;
	}
    }
    else 
    {
	return 'True';
    }
}

sub True
{
    return 0;
}


sub false
{
    return;
}

sub False
{
    return;
}



1;
=head1 NAME

Testing::Values::Boolean - Provides static boolean values, so that you don't have to write your own.

package VC12WorkspaceCreator;

# ************************************************************
# Description   : A VC12 Workspace Creator
# Author        : Johnny Willemsen
# Create Date   : 10/20/2012
# ************************************************************

# ************************************************************
# Pragmas
# ************************************************************

use strict;

use VC12ProjectCreator;
use VC11WorkspaceCreator;

use vars qw(@ISA);
@ISA = qw(VC11WorkspaceCreator);

# ************************************************************
# Subroutine Section
# ************************************************************

sub pre_workspace {
  my($self, $fh) = @_;
  my $crlf = $self->crlf();

  print $fh '﻿', $crlf,
            'Microsoft Visual Studio Solution File, Format Version 12.00', $crlf;
  $self->print_workspace_comment($fh,
            '# Visual Studio 2012', $crlf,
            '#', $crlf,
            '# This file was generated by MPC.  Any changes made directly to', $crlf,
            '# this file will be lost the next time it is generated.', $crlf,
            '#', $crlf,
            '# MPC Command:', $crlf,
            '# ', $self->create_command_line_string($0, @ARGV), $crlf);
}


1;

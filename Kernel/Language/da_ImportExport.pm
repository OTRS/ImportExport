# --
# Kernel/Language/da_ImportExport.pm - provides da (Danish) language translation
# Copyright (C) 2001-2011 OTRS AG, http://otrs.org/
# --
# $Id: da_ImportExport.pm,v 1.1.2.1 2011-05-05 09:34:48 ub Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::da_ImportExport;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.1.2.1 $) [1];

sub Data {
    my $Self = shift;

    my $Lang = $Self->{Translation};

    return if ref $Lang ne 'HASH';

    $Lang->{'Import/Export'}              = 'Import/Ekport';
    $Lang->{'Import/Export Management'}   = 'Import/Ekport styring';
    $Lang->{'Add mapping template'}       = 'Tilføj Mapping-Template';
    $Lang->{'Start Import'}               = 'Start import';
    $Lang->{'Start Export'}               = 'Start ekport';
    $Lang->{'Step'}                       = 'Trin';
    $Lang->{'Edit common information'}    = 'Ret fælles information';
    $Lang->{'Edit object information'}    = 'Ret objekt information';
    $Lang->{'Edit format information'}    = 'Ret format information';
    $Lang->{'Edit mapping information'}   = 'Ret mapping information';
    $Lang->{'Edit search information'}    = 'Ret søgeinformation';
    $Lang->{'Import information'}         = 'Import information';
    $Lang->{'Column'}                     = 'Kolonne';
    $Lang->{'Restrict export per search'} = 'Begræns ekport pr. søgning';
    $Lang->{'Source File'}                = 'Kilde fil';
    $Lang->{'Column Seperator'}           = 'Kolonne adskillelse';
    $Lang->{'Tabulator (TAB)'}            = 'Tabulator (TAB)';
    $Lang->{'Semicolon (;)'}              = 'Semikolon (;)';
    $Lang->{'Colon (:)'}                  = 'Kolon (:)';
    $Lang->{'Dot (.)'}                    = 'Punktum (.)';
    $Lang->{'Charset'}                    = 'Tegnsæt';
    $Lang->{'Include Column Headers'}     = '';

    return 1;
}

1;

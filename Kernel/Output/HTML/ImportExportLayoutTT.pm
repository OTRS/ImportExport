# --
# Copyright (C) 2001-2019 OTRS AG, https://otrs.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
# --

package Kernel::Output::HTML::ImportExportLayoutTT;

use strict;
use warnings;

=head1 NAME

Kernel::Output::HTML::ImportExportLayoutTT - layout backend module

=head1 SYNOPSIS

All layout functions for display TT code

=over 4

=cut

=item new()

create an object

    $BackendObject = Kernel::Output::HTML::ImportExportLayoutTT->new(
        %Param,
    );

=cut

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    # check needed objects
    for my $Object (qw(ConfigObject LogObject MainObject ParamObject LayoutObject)) {
        $Self->{$Object} = $Param{$Object} || die "Got no $Object!";
    }

    return $Self;
}

=item FormInputCreate()

create a input string

    my $Value = $BackendObject->FormInputCreate(
        Item => $ItemRef,
    );

=cut

sub FormInputCreate {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    if ( !$Param{Item} ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => 'Need Item!'
        );
        return;
    }

    return $Param{Item}->{Input}->{Data};
}

=item FormDataGet()

get form data

    my $FormData = $BackendObject->FormDataGet();

=cut

sub FormDataGet {
    my ( $Self, %Param ) = @_;

    return;
}

1;

=back

=head1 TERMS AND CONDITIONS

This software is part of the OTRS project (L<https://otrs.org/>).

This software comes with ABSOLUTELY NO WARRANTY. For details, see
the enclosed file COPYING for license information (GPL). If you
did not receive this file, see L<https://www.gnu.org/licenses/gpl-3.0.txt>.

=cut

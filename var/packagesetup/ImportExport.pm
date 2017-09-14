# --
# Copyright (C) 2001-2017 OTRS AG, http://otrs.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package var::packagesetup::ImportExport;    ## no critic

use strict;
use warnings;

our @ObjectDependencies = (
    'Kernel::System::DB',
    'Kernel::Config',
    'Kernel::System::SysConfig',
);

=head1 NAME

ImportExport.pm - code to execute during package installation

=head1 PUBLIC INTERFACE

=cut

=head2 new()

Create an object

    use Kernel::System::ObjectManager;
    local $Kernel::OM = Kernel::System::ObjectManager->new();
    my $CodeObject = $Kernel::OM->Get('var::packagesetup::ImportExport');

=cut

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    # always discard the config object before package code is executed,
    # to make sure that the config object will be created newly, so that it
    # will use the recently written new config from the package
    $Kernel::OM->ObjectsDiscard(
        Objects => ['Kernel::Config'],
    );

    return $Self;
}

=head2 CodeInstall()

Run the code install part

    my $Result = $CodeObject->CodeInstall();

=cut

sub CodeInstall {
    my ( $Self, %Param ) = @_;

    return 1;
}

=head2 CodeReinstall()

Run the code reinstall part

    my $Result = $CodeObject->CodeReinstall();

=cut

sub CodeReinstall {
    my ( $Self, %Param ) = @_;

    return 1;
}

=head2 CodeUpgrade()

Run the code upgrade part

    my $Result = $CodeObject->CodeUpgrade();

=cut

sub CodeUpgrade {
    my ( $Self, %Param ) = @_;

    return 1;
}

=head2 CodeUpgradeFromBefore_2_0_3()

This function is only executed if the installed module version is smaller than 2.0.3.

    my $Result = $CodeObject->CodeUpgradeFromBefore_2_0_3();

=cut

sub CodeUpgradeFromBefore_2_0_3 {    ## no critic
    my ( $Self, %Param ) = @_;

    # fix a typo in the database
    $Self->_FixDatabaseTypo();

    return 1;
}

=head2 CodeUpgradeFromLowerThan_4_0_91()

This function is only executed if the installed module version is smaller than 4.0.91.

my $Result = $CodeObject->CodeUpgradeFromLowerThan_4_0_91();

=cut

sub CodeUpgradeFromLowerThan_4_0_91 {    ## no critic
    my ( $Self, %Param ) = @_;

    # change configurations to match the new module location.
    $Self->_MigrateConfigs();

    return 1;
}

=head2 CodeUninstall()

run the code uninstall part

    my $Result = $CodeObject->CodeUninstall();

=cut

sub CodeUninstall {
    my ( $Self, %Param ) = @_;

    return 1;
}

=head1 PRIVATE INTERFACE

=head2 _FixDatabaseTypo()

    my $Result = $CodeObject->_FixDatabaseTypo();

=cut

sub _FixDatabaseTypo {
    my ( $Self, %Param ) = @_;

    # fix the ColumnSeperator typo (correct is ColumnSeparator)
    return if !$Kernel::OM->Get('Kernel::System::DB')->Do(
        SQL => "UPDATE imexport_format "
            . "SET data_key = 'ColumnSeparator' "
            . "WHERE data_key = 'ColumnSeperator'",
    );

    return 1;
}

=head2 _MigrateConfigs()

change configurations to match the new module location.

    my $Result = $CodeObject->_MigrateConfigs();

=cut

sub _MigrateConfigs {

    # create needed objects
    my $SysConfigObject = $Kernel::OM->Get('Kernel::System::SysConfig');
    my $ConfigObject    = $Kernel::OM->Get('Kernel::Config');

    # migrate ImportExport config
    # get setting content for ImportExport config
    my $Setting = $ConfigObject->Get('Frontend::NavigationModule');

    # update module location
    $Setting->{'AdminImportExport'}->{Module} = "Kernel::Output::HTML::NavBar::ModuleAdmin";

    my %ImportExportSettings = $SysConfigObject->SettingGet(
        Name    => 'Frontend::NavigationModule###AdminImportExport',
        Default => 1
    );

    my $ExclusiveLockGUID = $SysConfigObject->SettingLock(
        UserID    => 1,
        Force     => 1,
        DefaultID => $ImportExportSettings{DefaultID},
    );

    # set new setting,
    $SysConfigObject->SettingUpdate(
        Name              => 'Frontend::NavigationModule###AdminImportExport',
        EffectiveValue    => $Setting->{'AdminImportExport'},
        ExclusiveLockGUID => $ExclusiveLockGUID,
        UserID            => 1,
    );

    $SysConfigObject->SettingUnlock(
        UserID    => 1,
        DefaultID => $ImportExportSettings{DefaultID},
    );

    return 1;
}

1;

=head1 TERMS AND CONDITIONS

This Software is part of the OTRS project (http://otrs.org/).

This software comes with ABSOLUTELY NO WARRANTY. For details, see
the enclosed file COPYING for license information (AGPL). If you
did not receive this file, see L<http://www.gnu.org/licenses/agpl.txt>.

=cut

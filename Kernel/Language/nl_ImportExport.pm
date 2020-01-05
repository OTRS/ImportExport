# --
# Copyright (C) 2001-2020 OTRS AG, https://otrs.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
# --

package Kernel::Language::nl_ImportExport;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # Template: AAAImportExport
    $Self->{Translation}->{'Add mapping template'} = 'Mappingtemplate toevoegen';
    $Self->{Translation}->{'Charset'} = 'Karakterset';
    $Self->{Translation}->{'Colon (:)'} = 'Dubbele punt (:)';
    $Self->{Translation}->{'Column'} = 'Kolom';
    $Self->{Translation}->{'Column Separator'} = 'Kolomscheidingsteken';
    $Self->{Translation}->{'Dot (.)'} = 'Punt (.)';
    $Self->{Translation}->{'Semicolon (;)'} = 'Puntkomma (;)';
    $Self->{Translation}->{'Tabulator (TAB)'} = 'Tab';
    $Self->{Translation}->{'Include Column Headers'} = '';
    $Self->{Translation}->{'Import summary for'} = '';
    $Self->{Translation}->{'Imported records'} = '';
    $Self->{Translation}->{'Exported records'} = '';
    $Self->{Translation}->{'Records'} = '';
    $Self->{Translation}->{'Skipped'} = '';

    # Template: AdminImportExport
    $Self->{Translation}->{'Import/Export Management'} = 'Import/Export beheer';
    $Self->{Translation}->{'Create a template to import and export object information.'} = '';
    $Self->{Translation}->{'Start Import'} = 'Import starten';
    $Self->{Translation}->{'Start Export'} = 'Export starten';
    $Self->{Translation}->{'Step'} = 'Stap';
    $Self->{Translation}->{'Edit common information'} = 'Algemene informatie bewerken';
    $Self->{Translation}->{'Name is required!'} = '';
    $Self->{Translation}->{'Object is required!'} = 'Object is verplicht.';
    $Self->{Translation}->{'Format is required!'} = 'Formaat is verplicht.';
    $Self->{Translation}->{'Edit object information'} = 'Object-informatie bewerken';
    $Self->{Translation}->{'Edit format information'} = 'Format-informationen bewerken';
    $Self->{Translation}->{'is required!'} = '';
    $Self->{Translation}->{'Edit mapping information'} = 'Mapping-informatie bewerken';
    $Self->{Translation}->{'No map elements found.'} = 'Geen elementen gevonden.';
    $Self->{Translation}->{'Add Mapping Element'} = '';
    $Self->{Translation}->{'Edit search information'} = 'Zoek-informatie bewerken';
    $Self->{Translation}->{'Restrict export per search'} = 'Beperk export tot zoekopdracht';
    $Self->{Translation}->{'Import information'} = 'Import-informatie';
    $Self->{Translation}->{'Source File'} = 'Bronbestand';
    $Self->{Translation}->{'Success'} = '';
    $Self->{Translation}->{'Failed'} = '';
    $Self->{Translation}->{'Duplicate names'} = '';
    $Self->{Translation}->{'Last processed line number of import file'} = '';
    $Self->{Translation}->{'Ok'} = 'OK';

    # SysConfig
    $Self->{Translation}->{'Format backend module registration for the import/export module.'} =
        '';
    $Self->{Translation}->{'Import and export object information.'} = 'Import en export objectinformatie';
    $Self->{Translation}->{'Import/Export'} = 'Import/Export';

}

1;

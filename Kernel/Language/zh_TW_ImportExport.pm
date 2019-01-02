# --
# Copyright (C) 2001-2019 OTRS AG, https://otrs.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
# --

package Kernel::Language::zh_TW_ImportExport;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # Template: AAAImportExport
    $Self->{Translation}->{'Add mapping template'} = '增加映射模版';
    $Self->{Translation}->{'Charset'} = '字符集';
    $Self->{Translation}->{'Colon (:)'} = '冒號 (:)';
    $Self->{Translation}->{'Column'} = '列';
    $Self->{Translation}->{'Column Separator'} = '列分隔符';
    $Self->{Translation}->{'Dot (.)'} = '句號 (.)';
    $Self->{Translation}->{'Semicolon (;)'} = '分號 (;)';
    $Self->{Translation}->{'Tabulator (TAB)'} = '制表鍵 (TAB)';
    $Self->{Translation}->{'Include Column Headers'} = '包括列標題';
    $Self->{Translation}->{'Import summary for'} = '導入總結';
    $Self->{Translation}->{'Imported records'} = '導入紀錄';
    $Self->{Translation}->{'Exported records'} = '導出紀錄';
    $Self->{Translation}->{'Records'} = '紀錄';
    $Self->{Translation}->{'Skipped'} = '跳過的';

    # Template: AdminImportExport
    $Self->{Translation}->{'Import/Export Management'} = '導入/導出管理';
    $Self->{Translation}->{'Create a template to import and export object information.'} = '創建模板導入和導出對象信息。';
    $Self->{Translation}->{'Start Import'} = '開始導入';
    $Self->{Translation}->{'Start Export'} = '開始導出';
    $Self->{Translation}->{'Step'} = '步驟';
    $Self->{Translation}->{'Edit common information'} = '編輯共用信息';
    $Self->{Translation}->{'Name is required!'} = '';
    $Self->{Translation}->{'Object is required!'} = '對象是必需的！';
    $Self->{Translation}->{'Format is required!'} = '格式是必需的';
    $Self->{Translation}->{'Edit object information'} = '編輯對象信息';
    $Self->{Translation}->{'Edit format information'} = '編輯格式信息';
    $Self->{Translation}->{'is required!'} = '';
    $Self->{Translation}->{'Edit mapping information'} = '編輯映射信息';
    $Self->{Translation}->{'No map elements found.'} = '沒有找到映射的字段';
    $Self->{Translation}->{'Add Mapping Element'} = '添加映射字段';
    $Self->{Translation}->{'Edit search information'} = '編輯搜索信息';
    $Self->{Translation}->{'Restrict export per search'} = '限制導出每個搜尋';
    $Self->{Translation}->{'Import information'} = '導入信息';
    $Self->{Translation}->{'Source File'} = '源文件';
    $Self->{Translation}->{'Success'} = '成功';
    $Self->{Translation}->{'Failed'} = '失敗';
    $Self->{Translation}->{'Duplicate names'} = '重複的名稱';
    $Self->{Translation}->{'Last processed line number of import file'} = '導入文件最後處理的行數';
    $Self->{Translation}->{'Ok'} = 'Ok';

    # SysConfig
    $Self->{Translation}->{'Format backend module registration for the import/export module.'} =
        '';
    $Self->{Translation}->{'Import and export object information.'} = '導入和導出對象信息';
    $Self->{Translation}->{'Import/Export'} = '導入/導出';

}

1;

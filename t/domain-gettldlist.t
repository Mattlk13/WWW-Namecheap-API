#!perl -T

use Test::More tests => 5;
use WWW::Namecheap::API;

my $api = WWW::Namecheap::API->new(
    System => 'test',
    ApiUser => 'wwwnamecheapapi',
    ApiKey => '384bac5cb5784231b3b43e3f4fd31e2e',
    DefaultIp => '108.4.146.235',
);

isa_ok($api, 'WWW::Namecheap::API');

my $tlds = $api->domain->gettldlist;
isa_ok($tlds, 'ARRAY');

my $expected = [
    {
      'IsApiTransferable' => 'false',
      'MaxRegisterYears' => '10',
      'content' => 'Asia continent',
      'MaxTransferYears' => '10',
      'IsDisableWGAllot' => 'true',
      'IsSupportsIDN' => 'false',
      'MaxRenewYears' => '10',
      'IsIncludeInExtendedSearchOnly' => 'true',
      'Type' => 'CCTLD',
      'SequenceNumber' => '7',
      'MinTransferYears' => '1',
      'IsApiRegisterable' => 'true',
      'IsDisableModContact' => 'false',
      'NonRealTime' => 'false',
      'IsEppRequired' => 'false',
      'MinRenewYears' => '1',
      'MinRegisterYears' => '1',
      'IsApiRenewable' => 'false',
      'Name' => 'asia',
      'Category' => 'P'
    },
    {
      'IsApiTransferable' => 'true',
      'MaxRegisterYears' => '10',
      'content' => 'US Business',
      'MaxTransferYears' => '10',
      'IsDisableWGAllot' => 'false',
      'IsSupportsIDN' => 'false',
      'MaxRenewYears' => '10',
      'IsIncludeInExtendedSearchOnly' => 'false',
      'Type' => 'GTLD',
      'SequenceNumber' => '5',
      'MinTransferYears' => '1',
      'IsApiRegisterable' => 'true',
      'IsDisableModContact' => 'false',
      'NonRealTime' => 'false',
      'IsEppRequired' => 'true',
      'MinRenewYears' => '1',
      'MinRegisterYears' => '1',
      'IsApiRenewable' => 'true',
      'Name' => 'biz',
      'Category' => 'P'
    },
    {
      'IsApiTransferable' => 'false',
      'MaxRegisterYears' => '10',
      'content' => 'BZ Country Domain',
      'MaxTransferYears' => '10',
      'IsDisableWGAllot' => 'true',
      'IsSupportsIDN' => 'false',
      'MaxRenewYears' => '10',
      'IsIncludeInExtendedSearchOnly' => 'false',
      'Type' => 'CCTLD',
      'SequenceNumber' => '11',
      'MinTransferYears' => '1',
      'IsApiRegisterable' => 'true',
      'IsDisableModContact' => 'false',
      'NonRealTime' => 'false',
      'IsEppRequired' => 'false',
      'MinRenewYears' => '1',
      'MinRegisterYears' => '1',
      'IsApiRenewable' => 'true',
      'Name' => 'bz',
      'Category' => 'A'
    },
    {
      'IsApiTransferable' => 'true',
      'MaxRegisterYears' => '10',
      'content' => 'Canada Country TLD',
      'MaxTransferYears' => '10',
      'IsDisableWGAllot' => 'true',
      'IsSupportsIDN' => 'false',
      'MaxRenewYears' => '10',
      'IsIncludeInExtendedSearchOnly' => 'false',
      'Type' => 'CCTLD',
      'SequenceNumber' => '7',
      'MinTransferYears' => '1',
      'IsApiRegisterable' => 'true',
      'IsDisableModContact' => 'false',
      'NonRealTime' => 'true',
      'IsEppRequired' => 'true',
      'MinRenewYears' => '1',
      'MinRegisterYears' => '1',
      'IsApiRenewable' => 'false',
      'Name' => 'ca',
      'Category' => 'A'
    },
    {
      'IsApiTransferable' => 'false',
      'MaxRegisterYears' => '10',
      'content' => 'CC TLD',
      'MaxTransferYears' => '10',
      'IsDisableWGAllot' => 'false',
      'IsSupportsIDN' => 'false',
      'MaxRenewYears' => '10',
      'IsIncludeInExtendedSearchOnly' => 'false',
      'Type' => 'CCTLD',
      'SequenceNumber' => '9',
      'MinTransferYears' => '1',
      'IsApiRegisterable' => 'true',
      'IsDisableModContact' => 'false',
      'NonRealTime' => 'false',
      'IsEppRequired' => 'false',
      'MinRenewYears' => '1',
      'MinRegisterYears' => '1',
      'IsApiRenewable' => 'false',
      'Name' => 'cc',
      'Category' => 'A'
    },
    {
      'IsApiTransferable' => 'false',
      'MaxRegisterYears' => '5',
      'content' => 'cameroon TLD',
      'MaxTransferYears' => '1',
      'IsDisableWGAllot' => 'false',
      'IsSupportsIDN' => 'false',
      'MaxRenewYears' => '1',
      'IsIncludeInExtendedSearchOnly' => 'false',
      'Type' => 'CCTLD',
      'SequenceNumber' => '5',
      'MinTransferYears' => '1',
      'IsApiRegisterable' => 'true',
      'IsDisableModContact' => 'false',
      'NonRealTime' => 'false',
      'IsEppRequired' => 'false',
      'MinRenewYears' => '1',
      'MinRegisterYears' => '1',
      'IsApiRenewable' => 'false',
      'Name' => 'cm',
      'Category' => 'P'
    },
    {
      'IsApiTransferable' => 'true',
      'MaxRegisterYears' => '10',
      'content' => 'China TLD',
      'MaxTransferYears' => '10',
      'IsDisableWGAllot' => 'true',
      'IsSupportsIDN' => 'false',
      'MaxRenewYears' => '10',
      'IsIncludeInExtendedSearchOnly' => 'true',
      'Type' => 'CCTLD',
      'SequenceNumber' => '13',
      'MinTransferYears' => '1',
      'IsApiRegisterable' => 'false',
      'IsDisableModContact' => 'false',
      'NonRealTime' => 'false',
      'IsEppRequired' => 'true',
      'MinRenewYears' => '1',
      'MinRegisterYears' => '1',
      'IsApiRenewable' => 'true',
      'Name' => 'cn',
      'Category' => 'A'
    },
    {
      'IsApiTransferable' => 'true',
      'MaxRegisterYears' => '5',
      'content' => 'Company, Corporation and Commerce',
      'MaxTransferYears' => '1',
      'IsDisableWGAllot' => 'true',
      'IsSupportsIDN' => 'false',
      'MaxRenewYears' => '5',
      'IsIncludeInExtendedSearchOnly' => 'true',
      'Type' => 'CCTLD',
      'SequenceNumber' => '2',
      'MinTransferYears' => '1',
      'IsApiRegisterable' => 'true',
      'IsDisableModContact' => 'false',
      'NonRealTime' => 'false',
      'IsEppRequired' => 'false',
      'MinRenewYears' => '1',
      'MinRegisterYears' => '1',
      'IsApiRenewable' => 'true',
      'Name' => 'co',
      'Category' => 'P'
    },
    {
      'IsApiTransferable' => 'true',
      'MaxRegisterYears' => '10',
      'content' => 'UK based domain',
      'MaxTransferYears' => '10',
      'IsDisableWGAllot' => 'true',
      'IsSupportsIDN' => 'false',
      'MaxRenewYears' => '10',
      'IsIncludeInExtendedSearchOnly' => 'false',
      'Type' => 'CCTLD',
      'SequenceNumber' => '18',
      'MinTransferYears' => '1',
      'IsApiRegisterable' => 'true',
      'IsDisableModContact' => 'false',
      'NonRealTime' => 'true',
      'IsEppRequired' => 'false',
      'MinRenewYears' => '1',
      'MinRegisterYears' => '2',
      'IsApiRenewable' => 'false',
      'Name' => 'co.uk',
      'Category' => 'P'
    },
    {
      'IsApiTransferable' => 'true',
      'MaxRegisterYears' => '10',
      'content' => 'US Commercial',
      'MaxTransferYears' => '10',
      'IsDisableWGAllot' => 'false',
      'IsSupportsIDN' => 'false',
      'MaxRenewYears' => '10',
      'IsIncludeInExtendedSearchOnly' => 'false',
      'Type' => 'GTLD',
      'SequenceNumber' => '1',
      'MinTransferYears' => '1',
      'IsApiRegisterable' => 'true',
      'IsDisableModContact' => 'false',
      'NonRealTime' => 'false',
      'IsEppRequired' => 'true',
      'MinRenewYears' => '1',
      'MinRegisterYears' => '1',
      'IsApiRenewable' => 'true',
      'Name' => 'com',
      'Category' => 'P'
    },
    {
      'IsApiTransferable' => 'true',
      'MaxRegisterYears' => '10',
      'content' => 'Commercial China',
      'MaxTransferYears' => '10',
      'IsDisableWGAllot' => 'false',
      'IsSupportsIDN' => 'false',
      'MaxRenewYears' => '10',
      'IsIncludeInExtendedSearchOnly' => 'true',
      'Type' => 'CCTLD',
      'SequenceNumber' => '14',
      'MinTransferYears' => '1',
      'IsApiRegisterable' => 'false',
      'IsDisableModContact' => 'false',
      'NonRealTime' => 'false',
      'IsEppRequired' => 'false',
      'MinRenewYears' => '1',
      'MinRegisterYears' => '1',
      'IsApiRenewable' => 'false',
      'Name' => 'com.cn',
      'Category' => 'A'
    },
    {
      'IsApiTransferable' => 'false',
      'MaxRegisterYears' => '10',
      'content' => 'Germany TLD',
      'MaxTransferYears' => '10',
      'IsDisableWGAllot' => 'true',
      'IsSupportsIDN' => 'false',
      'MaxRenewYears' => '10',
      'IsIncludeInExtendedSearchOnly' => 'true',
      'Type' => 'CCTLD',
      'SequenceNumber' => '17',
      'MinTransferYears' => '1',
      'IsApiRegisterable' => 'true',
      'IsDisableModContact' => 'false',
      'NonRealTime' => 'true',
      'IsEppRequired' => 'false',
      'MinRenewYears' => '1',
      'MinRegisterYears' => '1',
      'IsApiRenewable' => 'false',
      'Name' => 'de',
      'Category' => 'A'
    },
    {
      'IsApiTransferable' => 'false',
      'MaxRegisterYears' => '10',
      'content' => 'European Domain',
      'MaxTransferYears' => '10',
      'IsDisableWGAllot' => 'true',
      'IsSupportsIDN' => 'false',
      'MaxRenewYears' => '10',
      'IsIncludeInExtendedSearchOnly' => 'true',
      'Type' => 'CCTLD',
      'SequenceNumber' => '21',
      'MinTransferYears' => '1',
      'IsApiRegisterable' => 'true',
      'IsDisableModContact' => 'true',
      'NonRealTime' => 'false',
      'IsEppRequired' => 'false',
      'MinRenewYears' => '1',
      'MinRegisterYears' => '1',
      'IsApiRenewable' => 'true',
      'Name' => 'eu',
      'Category' => 'A'
    },
    {
      'IsApiTransferable' => 'true',
      'MaxRegisterYears' => '5',
      'content' => 'India Country TLD',
      'MaxTransferYears' => '10',
      'IsDisableWGAllot' => 'true',
      'IsSupportsIDN' => 'false',
      'MaxRenewYears' => '10',
      'IsIncludeInExtendedSearchOnly' => 'false',
      'Type' => 'CCTLD',
      'SequenceNumber' => '20',
      'MinTransferYears' => '1',
      'IsApiRegisterable' => 'true',
      'IsDisableModContact' => 'false',
      'NonRealTime' => 'false',
      'IsEppRequired' => 'false',
      'MinRenewYears' => '1',
      'MinRegisterYears' => '1',
      'IsApiRenewable' => 'false',
      'Name' => 'in',
      'Category' => 'A'
    },
    {
      'IsApiTransferable' => 'true',
      'MaxRegisterYears' => '10',
      'content' => 'Information',
      'MaxTransferYears' => '10',
      'IsDisableWGAllot' => 'false',
      'IsSupportsIDN' => 'false',
      'MaxRenewYears' => '10',
      'IsIncludeInExtendedSearchOnly' => 'false',
      'Type' => 'GTLD',
      'SequenceNumber' => '6',
      'MinTransferYears' => '1',
      'IsApiRegisterable' => 'true',
      'IsDisableModContact' => 'false',
      'NonRealTime' => 'false',
      'IsEppRequired' => 'true',
      'MinRenewYears' => '1',
      'MinRegisterYears' => '1',
      'IsApiRenewable' => 'true',
      'Name' => 'info',
      'Category' => 'P'
    },
    {
      'IsApiTransferable' => 'true',
      'MaxRegisterYears' => '2',
      'content' => 'Me',
      'MaxTransferYears' => '2',
      'IsDisableWGAllot' => 'false',
      'IsSupportsIDN' => 'false',
      'MaxRenewYears' => '2',
      'IsIncludeInExtendedSearchOnly' => 'false',
      'Type' => 'CCTLD',
      'SequenceNumber' => '4',
      'MinTransferYears' => '1',
      'IsApiRegisterable' => 'true',
      'IsDisableModContact' => 'false',
      'NonRealTime' => 'false',
      'IsEppRequired' => 'true',
      'MinRenewYears' => '1',
      'MinRegisterYears' => '1',
      'IsApiRenewable' => 'false',
      'Name' => 'me',
      'Category' => 'P'
    },
    {
      'IsApiTransferable' => 'true',
      'MaxRegisterYears' => '10',
      'content' => 'Uk based doamin',
      'MaxTransferYears' => '10',
      'IsDisableWGAllot' => 'true',
      'IsSupportsIDN' => 'false',
      'MaxRenewYears' => '10',
      'IsIncludeInExtendedSearchOnly' => 'false',
      'Type' => 'CCTLD',
      'SequenceNumber' => '22',
      'MinTransferYears' => '1',
      'IsApiRegisterable' => 'true',
      'IsDisableModContact' => 'false',
      'NonRealTime' => 'true',
      'IsEppRequired' => 'false',
      'MinRenewYears' => '1',
      'MinRegisterYears' => '2',
      'IsApiRenewable' => 'false',
      'Name' => 'me.uk',
      'Category' => 'P'
    },
    {
      'IsApiTransferable' => 'true',
      'MaxRegisterYears' => '2',
      'content' => 'Mobile',
      'MaxTransferYears' => '10',
      'IsDisableWGAllot' => 'true',
      'IsSupportsIDN' => 'false',
      'MaxRenewYears' => '10',
      'IsIncludeInExtendedSearchOnly' => 'false',
      'Type' => 'GTLD',
      'SequenceNumber' => '4',
      'MinTransferYears' => '1',
      'IsApiRegisterable' => 'true',
      'IsDisableModContact' => 'false',
      'NonRealTime' => 'false',
      'IsEppRequired' => 'true',
      'MinRenewYears' => '1',
      'MinRegisterYears' => '2',
      'IsApiRenewable' => 'true',
      'Name' => 'mobi',
      'Category' => 'P'
    },
    {
      'IsApiTransferable' => 'true',
      'MaxRegisterYears' => '10',
      'content' => 'US Network',
      'MaxTransferYears' => '10',
      'IsDisableWGAllot' => 'false',
      'IsSupportsIDN' => 'false',
      'MaxRenewYears' => '10',
      'IsIncludeInExtendedSearchOnly' => 'false',
      'Type' => 'GTLD',
      'SequenceNumber' => '2',
      'MinTransferYears' => '1',
      'IsApiRegisterable' => 'true',
      'IsDisableModContact' => 'false',
      'NonRealTime' => 'false',
      'IsEppRequired' => 'true',
      'MinRenewYears' => '1',
      'MinRegisterYears' => '1',
      'IsApiRenewable' => 'true',
      'Name' => 'net',
      'Category' => 'P'
    },
    {
      'IsApiTransferable' => 'true',
      'MaxRegisterYears' => '10',
      'content' => 'China Net',
      'MaxTransferYears' => '10',
      'IsDisableWGAllot' => 'false',
      'IsSupportsIDN' => 'false',
      'MaxRenewYears' => '10',
      'IsIncludeInExtendedSearchOnly' => 'true',
      'Type' => 'CCTLD',
      'SequenceNumber' => '15',
      'MinTransferYears' => '1',
      'IsApiRegisterable' => 'false',
      'IsDisableModContact' => 'false',
      'NonRealTime' => 'false',
      'IsEppRequired' => 'false',
      'MinRenewYears' => '1',
      'MinRegisterYears' => '1',
      'IsApiRenewable' => 'false',
      'Name' => 'net.cn',
      'Category' => 'A'
    },
    {
      'IsApiTransferable' => 'false',
      'MaxRegisterYears' => '10',
      'content' => 'NU Country Domain',
      'MaxTransferYears' => '10',
      'IsDisableWGAllot' => 'true',
      'IsSupportsIDN' => 'false',
      'MaxRenewYears' => '10',
      'IsIncludeInExtendedSearchOnly' => 'true',
      'Type' => 'CCTLD',
      'SequenceNumber' => '12',
      'MinTransferYears' => '1',
      'IsApiRegisterable' => 'true',
      'IsDisableModContact' => 'false',
      'NonRealTime' => 'false',
      'IsEppRequired' => 'false',
      'MinRenewYears' => '1',
      'MinRegisterYears' => '2',
      'IsApiRenewable' => 'true',
      'Name' => 'nu',
      'Category' => 'A'
    },
    {
      'IsApiTransferable' => 'true',
      'MaxRegisterYears' => '10',
      'content' => 'US Organization',
      'MaxTransferYears' => '10',
      'IsDisableWGAllot' => 'false',
      'IsSupportsIDN' => 'false',
      'MaxRenewYears' => '10',
      'IsIncludeInExtendedSearchOnly' => 'false',
      'Type' => 'GTLD',
      'SequenceNumber' => '3',
      'MinTransferYears' => '1',
      'IsApiRegisterable' => 'true',
      'IsDisableModContact' => 'false',
      'NonRealTime' => 'false',
      'IsEppRequired' => 'true',
      'MinRenewYears' => '1',
      'MinRegisterYears' => '1',
      'IsApiRenewable' => 'true',
      'Name' => 'org',
      'Category' => 'P'
    },
    {
      'IsApiTransferable' => 'true',
      'MaxRegisterYears' => '10',
      'content' => 'China Org',
      'MaxTransferYears' => '10',
      'IsDisableWGAllot' => 'false',
      'IsSupportsIDN' => 'false',
      'MaxRenewYears' => '10',
      'IsIncludeInExtendedSearchOnly' => 'true',
      'Type' => 'CCTLD',
      'SequenceNumber' => '16',
      'MinTransferYears' => '1',
      'IsApiRegisterable' => 'false',
      'IsDisableModContact' => 'false',
      'NonRealTime' => 'false',
      'IsEppRequired' => 'false',
      'MinRenewYears' => '1',
      'MinRegisterYears' => '1',
      'IsApiRenewable' => 'false',
      'Name' => 'org.cn',
      'Category' => 'A'
    },
    {
      'IsApiTransferable' => 'true',
      'MaxRegisterYears' => '10',
      'content' => 'US based domain',
      'MaxTransferYears' => '2',
      'IsDisableWGAllot' => 'true',
      'IsSupportsIDN' => 'false',
      'MaxRenewYears' => '2',
      'IsIncludeInExtendedSearchOnly' => 'true',
      'Type' => 'CCTLD',
      'SequenceNumber' => '19',
      'MinTransferYears' => '2',
      'IsApiRegisterable' => 'true',
      'IsDisableModContact' => 'false',
      'NonRealTime' => 'true',
      'IsEppRequired' => 'false',
      'MinRenewYears' => '2',
      'MinRegisterYears' => '2',
      'IsApiRenewable' => 'false',
      'Name' => 'org.uk',
      'Category' => 'A'
    },
    {
      'IsApiTransferable' => 'false',
      'MaxRegisterYears' => '10',
      'content' => 'TV Country TLD',
      'MaxTransferYears' => '10',
      'IsDisableWGAllot' => 'false',
      'IsSupportsIDN' => 'false',
      'MaxRenewYears' => '10',
      'IsIncludeInExtendedSearchOnly' => 'true',
      'Type' => 'CCTLD',
      'SequenceNumber' => '10',
      'MinTransferYears' => '1',
      'IsApiRegisterable' => 'true',
      'IsDisableModContact' => 'false',
      'NonRealTime' => 'false',
      'IsEppRequired' => 'false',
      'MinRenewYears' => '1',
      'MinRegisterYears' => '1',
      'IsApiRenewable' => 'true',
      'Name' => 'tv',
      'Category' => 'A'
    },
    {
      'IsApiTransferable' => 'true',
      'MaxRegisterYears' => '10',
      'content' => 'US Country TLD',
      'MaxTransferYears' => '10',
      'IsDisableWGAllot' => 'true',
      'IsSupportsIDN' => 'false',
      'MaxRenewYears' => '10',
      'IsIncludeInExtendedSearchOnly' => 'false',
      'Type' => 'CCTLD',
      'SequenceNumber' => '4',
      'MinTransferYears' => '1',
      'IsApiRegisterable' => 'true',
      'IsDisableModContact' => 'false',
      'NonRealTime' => 'false',
      'IsEppRequired' => 'true',
      'MinRenewYears' => '1',
      'MinRegisterYears' => '1',
      'IsApiRenewable' => 'false',
      'Name' => 'us',
      'Category' => 'P'
    },
    {
      'IsApiTransferable' => 'false',
      'MaxRegisterYears' => '10',
      'content' => 'Website',
      'MaxTransferYears' => '10',
      'IsDisableWGAllot' => 'true',
      'IsSupportsIDN' => 'false',
      'MaxRenewYears' => '10',
      'IsIncludeInExtendedSearchOnly' => 'true',
      'Type' => 'CCTLD',
      'SequenceNumber' => '8',
      'MinTransferYears' => '1',
      'IsApiRegisterable' => 'true',
      'IsDisableModContact' => 'false',
      'NonRealTime' => 'false',
      'IsEppRequired' => 'false',
      'MinRenewYears' => '1',
      'MinRegisterYears' => '1',
      'IsApiRenewable' => 'true',
      'Name' => 'ws',
      'Category' => 'A'
    }
];

is_deeply($tlds, $expected);

# Test caching
my $tlds2 = $api->domain->gettldlist;

is($tlds, $tlds2, 'Same arrayref returned twice');
isnt($tlds, $expected, 'But not duplicate of $expected');
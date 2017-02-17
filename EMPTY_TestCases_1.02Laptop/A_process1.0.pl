#!perl
#use warnings;
#use strict;
use Config::Tiny;
use File::Copy;
use POSIX;

system ("cls");

# which directory *********************

my $dirname ='./TestCases_encoder_intra_jvet10/A_result_logs/';
opendir(DIR, $dirname) or die "Could not open $dirname\n";

# standard EXCEL filename writing style ************************************************************************************

my @out_db=();

# A1 A1 A1 -------------------------------------------

$out_db[0][0]='Tango_22.log';
$out_db[0][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassA1_S01_q0_22_F294_T8';
$out_db[1][0]='Tango_27.log';
$out_db[1][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassA1_S01_q0_27_F294_T8';
$out_db[2][0]='Tango_32.log';
$out_db[2][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassA1_S01_q0_32_F294_T8';
$out_db[3][0]='Tango_37.log';
$out_db[3][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassA1_S01_q0_37_F294_T8';

$out_db[4][0]='Drums100_22.log';
$out_db[4][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassA1_S02_q0_22_F300_T8';
$out_db[5][0]='Drums100_27.log'; 
$out_db[5][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassA1_S02_q0_27_F300_T8';
$out_db[6][0]='Drums100_32.log';
$out_db[6][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassA1_S02_q0_32_F300_T8';
$out_db[7][0]='Drums100_37.log';
$out_db[7][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassA1_S02_q0_37_F300_T8';

$out_db[8][0]='CampfireParty_22.log';
$out_db[8][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassA1_S03_q0_22_F300_T8';
$out_db[9][0]='CampfireParty_27.log';
$out_db[9][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassA1_S03_q0_27_F300_T8';
$out_db[10][0]='CampfireParty_32.log';
$out_db[10][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassA1_S03_q0_32_F300_T8';
$out_db[11][0]='CampfireParty_37.log';
$out_db[11][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassA1_S03_q0_37_F300_T8';

$out_db[12][0]='ToddlerFountain_22.log';
$out_db[12][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassA1_S04_q0_22_F300_T8';
$out_db[13][0]='ToddlerFountain_27.log';
$out_db[13][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassA1_S04_q0_27_F300_T8';
$out_db[14][0]='ToddlerFountain_32.log';
$out_db[14][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassA1_S04_q0_32_F300_T8';
$out_db[15][0]='ToddlerFountain_37.log'; 
$out_db[15][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassA1_S04_q0_37_F300_T8';

# A2 A2 A2 -------------------------------------------

$out_db[16][0]='CatRobot_22.log'; 
$out_db[16][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassA2_S01_q0_22_F300_T8';
$out_db[17][0]='CatRobot_27.log';
$out_db[17][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassA2_S01_q0_27_F300_T8';
$out_db[18][0]='CatRobot_32.log';
$out_db[18][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassA2_S01_q0_32_F300_T8';
$out_db[19][0]='CatRobot_37.log';
$out_db[19][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassA2_S01_q0_37_F300_T8';

$out_db[20][0]='TrafficFlow_22.log';
$out_db[20][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassA2_S02_q0_22_F300_T8';
$out_db[21][0]='TrafficFlow_27.log';
$out_db[21][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassA2_S02_q0_27_F300_T8';
$out_db[22][0]='TrafficFlow_32.log';
$out_db[22][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassA2_S02_q0_32_F300_T8';
$out_db[23][0]='TrafficFlow_37.log'; 
$out_db[23][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassA2_S02_q0_37_F300_T8';

$out_db[24][0]='DaylightRoad_22.log'; 
$out_db[24][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassA2_S03_q0_22_F300_T8';
$out_db[25][0]='DaylightRoad_27.log'; 
$out_db[25][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassA2_S03_q0_27_F300_T8';
$out_db[26][0]='DaylightRoad_32.log';
$out_db[26][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassA2_S03_q0_32_F300_T8';
$out_db[27][0]='DaylightRoad_37.log';
$out_db[27][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassA2_S03_q0_37_F300_T8';

$out_db[28][0]='Rollercoaster_22.log';
$out_db[28][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassA2_S04_q0_22_F300_T8';
$out_db[29][0]='Rollercoaster_27.log';
$out_db[29][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassA2_S04_q0_27_F300_T8';
$out_db[30][0]='Rollercoaster_32.log';
$out_db[30][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassA2_S04_q0_32_F300_T8';
$out_db[31][0]='Rollercoaster_37.log';
$out_db[31][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassA2_S04_q0_37_F300_T8';

# B B B -------------------------------------------

$out_db[32][0]='Kimono_22.log'; 
$out_db[32][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassB_S01_q0_22_F240_T8';
$out_db[33][0]='Kimono_27.log';
$out_db[33][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassB_S01_q0_27_F240_T8';
$out_db[34][0]='Kimono_32.log';
$out_db[34][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassB_S01_q0_32_F240_T8';
$out_db[35][0]='Kimono_37.log';
$out_db[35][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassB_S01_q0_37_F240_T8';

$out_db[36][0]='ParkScene_22.log';
$out_db[36][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassB_S02_q0_22_F240_T8';
$out_db[37][0]='ParkScene_27.log';
$out_db[37][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassB_S02_q0_27_F240_T8';
$out_db[38][0]='ParkScene_32.log'; 
$out_db[38][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassB_S02_q0_32_F240_T8';
$out_db[39][0]='ParkScene_37.log'; 
$out_db[39][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassB_S02_q0_37_F240_T8';

$out_db[40][0]='Cactus_22.log'; 
$out_db[40][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassB_S03_q0_22_F500_T8';
$out_db[41][0]='Cactus_27.log'; 
$out_db[41][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassB_S03_q0_27_F500_T8';
$out_db[42][0]='Cactus_32.log'; 
$out_db[42][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassB_S03_q0_32_F500_T8';
$out_db[43][0]='Cactus_37.log'; 
$out_db[43][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassB_S03_q0_37_F500_T8';

$out_db[44][0]='BasketballDrive_22.log';
$out_db[44][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassB_S04_q0_22_F500_T8';
$out_db[45][0]='BasketballDrive_27.log'; 
$out_db[45][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassB_S04_q0_27_F500_T8';
$out_db[46][0]='BasketballDrive_32.log'; 
$out_db[46][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassB_S04_q0_32_F500_T8';
$out_db[47][0]='BasketballDrive_37.log'; 
$out_db[47][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassB_S04_q0_37_F500_T8';

$out_db[48][0]='BQTerrace_22.log';
$out_db[48][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassB_S05_q0_22_F600_T8';
$out_db[49][0]='BQTerrace_27.log';
$out_db[49][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassB_S05_q0_27_F600_T8';
$out_db[50][0]='BQTerrace_32.log'; 
$out_db[50][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassB_S05_q0_32_F600_T8';
$out_db[51][0]='BQTerrace_37.log';
$out_db[51][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassB_S05_q0_37_F600_T8';

# C C C -------------------------------------------

$out_db[52][0]='BasketballDrill_22.log';
$out_db[52][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassC_S01_q0_22_F500_T8';
$out_db[53][0]='BasketballDrill_27.log';
$out_db[53][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassC_S01_q0_27_F500_T8';
$out_db[54][0]='BasketballDrill_32.log';
$out_db[54][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassC_S01_q0_32_F500_T8';
$out_db[55][0]='BasketballDrill_37.log';
$out_db[55][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassC_S01_q0_37_F500_T8';

$out_db[56][0]='BQMall_22.log';
$out_db[56][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassC_S02_q0_22_F600_T8';
$out_db[57][0]='BQMall_27.log';
$out_db[57][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassC_S02_q0_27_F600_T8';
$out_db[58][0]='BQMall_32.log';
$out_db[58][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassC_S02_q0_32_F600_T8';
$out_db[59][0]='BQMall_37.log';
$out_db[59][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassC_S02_q0_37_F600_T8';

$out_db[60][0]='PartyScene_22.log';
$out_db[60][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassC_S03_q0_22_F500_T8';
$out_db[61][0]='PartyScene_27.log';
$out_db[61][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassC_S03_q0_27_F500_T8';
$out_db[62][0]='PartyScene_32.log';
$out_db[62][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassC_S03_q0_32_F500_T8';
$out_db[63][0]='PartyScene_37.log';
$out_db[63][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassC_S03_q0_37_F500_T8';

$out_db[64][0]='RaceHorsesC_22.log';
$out_db[64][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassC_S04_q0_22_F300_T8';
$out_db[65][0]='RaceHorsesC_27.log'; 
$out_db[65][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassC_S04_q0_27_F300_T8';
$out_db[66][0]='RaceHorsesC_32.log'; 
$out_db[66][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassC_S04_q0_32_F300_T8';
$out_db[67][0]='RaceHorsesC_37.log'; 
$out_db[67][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassC_S04_q0_37_F300_T8';

# D D D -------------------------------------------

$out_db[68][0]='BasketballPass_22.log'; 
$out_db[68][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassD_S01_q0_22_F500_T8';
$out_db[69][0]='BasketballPass_27.log'; 
$out_db[69][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassD_S01_q0_27_F500_T8';
$out_db[70][0]='BasketballPass_32.log'; 
$out_db[70][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassD_S01_q0_32_F500_T8';
$out_db[71][0]='BasketballPass_37.log'; 
$out_db[71][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassD_S01_q0_37_F500_T8';

$out_db[72][0]='BQSquare_22.log'; 
$out_db[72][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassD_S02_q0_22_F600_T8';
$out_db[73][0]='BQSquare_27.log'; 
$out_db[73][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassD_S02_q0_27_F600_T8';
$out_db[74][0]='BQSquare_32.log'; 
$out_db[74][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassD_S02_q0_32_F600_T8';
$out_db[75][0]='BQSquare_37.log'; 
$out_db[75][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassD_S02_q0_37_F600_T8';

$out_db[76][0]='BlowingBubbles_22.log'; 
$out_db[76][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassD_S03_q0_22_F500_T8';
$out_db[77][0]='BlowingBubbles_27.log'; 
$out_db[77][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassD_S03_q0_27_F500_T8';
$out_db[78][0]='BlowingBubbles_32.log'; 
$out_db[78][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassD_S03_q0_32_F500_T8';
$out_db[79][0]='BlowingBubbles_37.log'; 
$out_db[79][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassD_S03_q0_37_F500_T8';

$out_db[80][0]='RaceHorses_22.log'; 
$out_db[80][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassD_S04_q0_22_F300_T8';
$out_db[81][0]='RaceHorses_27.log'; 
$out_db[81][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassD_S04_q0_27_F300_T8';
$out_db[82][0]='RaceHorses_32.log'; 
$out_db[82][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassD_S04_q0_32_F300_T8';
$out_db[83][0]='RaceHorses_37.log'; 
$out_db[83][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassD_S04_q0_37_F300_T8';

# E E E -------------------------------------------

$out_db[84][0]='FourPeople_22.log'; 
$out_db[84][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassE_S01_q0_22_F600_T8';
$out_db[85][0]='FourPeople_27.log'; 
$out_db[85][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassE_S01_q0_27_F600_T8';
$out_db[86][0]='FourPeople_32.log'; 
$out_db[86][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassE_S01_q0_32_F600_T8';
$out_db[87][0]='FourPeople_37.log'; 
$out_db[87][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassE_S01_q0_37_F600_T8';

$out_db[88][0]='Johnny_22.log'; 
$out_db[88][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassE_S02_q0_22_F600_T8';
$out_db[89][0]='Johnny_27.log'; 
$out_db[89][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassE_S02_q0_27_F600_T8';
$out_db[90][0]='Johnny_32.log'; 
$out_db[90][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassE_S02_q0_32_F600_T8';
$out_db[91][0]='Johnny_37.log'; 
$out_db[91][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassE_S02_q0_37_F600_T8';

$out_db[92][0]='KristenAndSara_22.log'; 
$out_db[92][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassE_S03_q0_22_F600_T8';
$out_db[93][0]='KristenAndSara_27.log'; 
$out_db[93][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassE_S03_q0_27_F600_T8';
$out_db[94][0]='KristenAndSara_32.log'; 
$out_db[94][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassE_S03_q0_32_F600_T8';
$out_db[95][0]='KristenAndSara_37.log'; 
$out_db[95][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassE_S03_q0_37_F600_T8';

# F F F -------------------------------------------

$out_db[96][0]='BasketballDrillText_22.log'; 
$out_db[96][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassF_S01_q0_22_F500_T8';
$out_db[97][0]='BasketballDrillText_27.log'; 
$out_db[97][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassF_S01_q0_27_F500_T8';
$out_db[98][0]='BasketballDrillText_32.log'; 
$out_db[98][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassF_S01_q0_32_F500_T8';
$out_db[99][0]='BasketballDrillText_37.log'; 
$out_db[99][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassF_S01_q0_37_F500_T8';

$out_db[100][0]='ChinaSpeed_22.log'; 
$out_db[100][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassF_S02_q0_22_F500_T8';
$out_db[101][0]='ChinaSpeed_27.log'; 
$out_db[101][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassF_S02_q0_27_F500_T8';
$out_db[102][0]='ChinaSpeed_32.log'; 
$out_db[102][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassF_S02_q0_32_F500_T8';
$out_db[103][0]='ChinaSpeed_37.log'; 
$out_db[103][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassF_S02_q0_37_F500_T8';

$out_db[104][0]='SlideEditing_22.log'; 
$out_db[104][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassF_S03_q0_22_F300_T8';
$out_db[105][0]='SlideEditing_27.log'; 
$out_db[105][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassF_S03_q0_27_F300_T8';
$out_db[106][0]='SlideEditing_32.log'; 
$out_db[106][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassF_S03_q0_32_F300_T8';
$out_db[107][0]='SlideEditing_37.log'; 
$out_db[107][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassF_S03_q0_37_F300_T8';

$out_db[108][0]='SlideShow_22.log'; 
$out_db[108][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassF_S04_q0_22_F500_T8';
$out_db[109][0]='SlideShow_27.log'; 
$out_db[109][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassF_S04_q0_27_F500_T8';
$out_db[110][0]='SlideShow_32.log'; 
$out_db[110][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassF_S04_q0_32_F500_T8';
$out_db[111][0]='SlideShow_37.log'; 
$out_db[111][1]='JEMTrunk_intra_jvet10_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_SEIDecodedPictureHash=1_dummy_ClassF_S04_q0_37_F500_T8';

# read directory encoder and decoder log files ****************************************************************************************************

@encodeArray = ();
@decodeArray = ();

foreach my $filename (readdir(DIR))
{
	if ($filename =~ /dec_/)
	{
		push(@decodeArray, $filename);
	}
	elsif ($filename =~ /enc_/)
	{
		push(@encodeArray, $filename);
	}
}
closedir(DH);

# init arrays ****************************************************************************************************************************************

@unsortedArray=();
for (my $i=0;$i<(scalar @encodeArray);$i++)
{
	$unsortedArray[$i][0]='';  # filename
	$unsortedArray[$i][1]=0.0; # Bitrate
	$unsortedArray[$i][2]=0.0; # Y-PSNR
	$unsortedArray[$i][3]=0.0; # U-PSNR
	$unsortedArray[$i][4]=0.0; # V-PSNR
	$unsortedArray[$i][5]=0.0; # YUV-PSNR not in use
	$unsortedArray[$i][6]=0.0; # decoder time
	$unsortedArray[$i][7]=0.0; # encoder time
	$unsortedArray[$i][8]=0.0; # some percent value coloumn H
	$unsortedArray[$i][9]=0.0; # always 0 column I
	$unsortedArray[$i][10]=''; # YUV file
}

@finalSortedArray=();
for (my $i=0;$i<(scalar @finalSortedArray);$i++)
{
	$finalSortedArray[$i][0]='';  # filename
	$finalSortedArray[$i][1]=0.0; # Bitrate
	$finalSortedArray[$i][2]=0.0; # Y-PSNR
	$finalSortedArray[$i][3]=0.0; # U-PSNR
	$finalSortedArray[$i][4]=0.0; # V-PSNR
	$finalSortedArray[$i][5]=0.0; # YUV-PSNR not in use
	$finalSortedArray[$i][6]=0.0; # decoder time
	$finalSortedArray[$i][7]=0.0; # encoder time
	$finalSortedArray[$i][8]=0.0; # some percent value coloumn H
	$finalSortedArray[$i][9]=0.0; # always 0 column I
	$finalSortedArray[$i][10]=''; # YUV file
}

# analyse encoder ************************************************************************************************************************************

my $summary=0;
my $total_frames=0;
my $i=0;
foreach my $encoderFileName (@encodeArray)
{
	my $finalFileName=$dirname.$encoderFileName;
	open(my $fh, '<:encoding(UTF-8)', $finalFileName) or die "Could not open $finalFileName";
	
	while (my $row = <$fh>)
	{
		chomp $row;	

		if ($summary == 1 && $total_frames == 1)
		{		
			$firstTime=0;
			my @items = split(' ', $row);
			$unsortedArray[$i][0]=substr($encoderFileName,4);
			$unsortedArray[$i][1]=@items[2];
			$unsortedArray[$i][2]=@items[3];
			$unsortedArray[$i][3]=@items[4];
			$unsortedArray[$i][4]=@items[5];
			$unsortedArray[$i][5]=@items[6];
	
			$summary=0;
			$total_frames=0;
		}		
		
		if ($summary == 0 && $total_frames == 0 && $row =~ /SUMMARY/)
		{
				$summary=1;
				$total_frames=0;
				next;
		}
		
		if ($summary == 1 && $total_frames == 0 && $row =~ /Total Frames/)
		{
				$summary=1;
				$total_frames=1;
				next;
		}			
		
		if ($row =~ /Total Time:/)
		{
			my @items = split(' ', $row);
			$unsortedArray[$i++][6]=@items[2];
		}
	}
	close($fh);
}

# analyze decode files ***********************************************************************************************

$firstTime=0;
$i=0;
foreach my $decoderFileName (@decodeArray)
{
	my $finalFileName=$dirname.$decoderFileName;
	open(my $fh, '<:encoding(UTF-8)', $finalFileName) or die "Could not open $finalFileName";
	
	while (my $row = <$fh>)
	{
		chomp $row;
		if ($row =~ /Total Time/)
		{		
			my $filename=substr($decoderFileName,4);
			my @items = split(' ', $row);
			my $total_time=$items[2];	

			for (my $j=0;$j<scalar @unsortedArray;$j++)
			{
				if ($unsortedArray[$j][0] eq $filename)
				{		
				  $unsortedArray[$j][7]=$total_time;
					last;
				}
			}
			
			last;
		}				
	}
	close($fh);
}

# replace filename *******************************************************************************

for ($i=0;$i<scalar @unsortedArray;$i++)
{
	$unsortedArray[$i][10]=$unsortedArray[$i][0];
	$unsortedArray[$i][0]=getStandardFilename($unsortedArray[$i][0]);
}

# sort array *************************************************************************************

my $z=0;
for (my $i=0;$i<(scalar @out_db);$i++)
{
	for ($j=0;$j<scalar @unsortedArray;$j++)
	{ 
		if ($out_db[$i][1] eq $unsortedArray[$j][0])
		{
			for (my $k=0;$k<=10;$k++)
			{
				$finalSortedArray[$z][$k]=$unsortedArray[$j][$k];
			}
			$z++;
		}
	}
}

# write CSV file *********************************************************************************

open (F1, ">codec_results.csv") || die "couldn't open the file!";

print F1 "Filename,Bitrate,Y-PSNR,U-PSNR,V-PSNR,decoder time,encoder time,unknown,always 0,YUV file\n";

for ($i=0;$i<scalar @finalSortedArray;$i++)
{
	print F1 "$finalSortedArray[$i][0],$finalSortedArray[$i][1],$finalSortedArray[$i][2],$finalSortedArray[$i][3],$finalSortedArray[$i][4],$finalSortedArray[$i][6],$finalSortedArray[$i][7],$finalSortedArray[$i][8],$finalSortedArray[$i][9],$finalSortedArray[$i][10]\n";
}
close F1;

# FUNCTIONS **************************************************************************************
sub getStandardFilename
{
	for (my $i=0;$i<(scalar @out_db);$i++)
	{		
		if ($_[0] eq $out_db[$i][0])
		{
			return $out_db[$i][1];
		}
	}
	
	return $_[0];
}

# END ***********************************************************************************************
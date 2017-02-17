#!perl
use warnings;
use strict;
use Config::Tiny;
use File::Copy;
use POSIX;

my @seq_name;
$seq_name[0][0]='BasketballDrill';
$seq_name[0][1]=48;
$seq_name[1][0]='BasketballDrillText';
$seq_name[1][1]=48;
$seq_name[2][0]='BasketballDrive';
$seq_name[2][1]=48;
$seq_name[3][0]='BasketballPass';
$seq_name[3][1]=48;
$seq_name[4][0]='BlowingBubbles';
$seq_name[4][1]=48;
$seq_name[5][0]='BQMall';
$seq_name[5][1]=64;
$seq_name[6][0]='BQSquare';
$seq_name[6][1]=64;
$seq_name[7][0]='BQTerrace';
$seq_name[7][1]=64;
$seq_name[8][0]='Cactus';
$seq_name[8][1]=48;
$seq_name[9][0]='CampfireParty';
$seq_name[9][1]=32;
$seq_name[10][0]='CatRobot';
$seq_name[10][1]=64;
$seq_name[11][0]='ChinaSpeed';
$seq_name[11][1]=32;
$seq_name[12][0]='DaylightRoad';
$seq_name[12][1]=64;
$seq_name[13][0]='Drums100';
$seq_name[13][1]=96;
$seq_name[14][0]='FourPeople';
$seq_name[14][1]=64;
$seq_name[15][0]='Johnny';
$seq_name[15][1]=64;
$seq_name[16][0]='Kimono';
$seq_name[16][1]=32;
$seq_name[17][0]='KristenAndSara';
$seq_name[17][1]=64;
$seq_name[18][0]='ParkScene';
$seq_name[18][1]=32;
$seq_name[19][0]='PartyScene';
$seq_name[19][1]=48;
$seq_name[20][0]='RaceHorses';
$seq_name[20][1]=32;
$seq_name[21][0]='RaceHorsesC';
$seq_name[21][1]=32;
$seq_name[22][0]='Rollercoaster';
$seq_name[22][1]=64;
$seq_name[23][0]='SlideEditing';
$seq_name[23][1]=32;
$seq_name[24][0]='SlideShow';
$seq_name[24][1]=16;
$seq_name[25][0]='Tango';
$seq_name[25][1]=64;
$seq_name[26][0]='ToddlerFountain';
$seq_name[26][1]=64;
$seq_name[27][0]='TrafficFlow';
$seq_name[27][1]=32;

my @main_cfg_file;
$main_cfg_file[0] = "encoder_intra_jvet10"; # we normally need only this one for our stuff
#$main_cfg_file[1] = "encoder_lowdelay_jvet10";
#$main_cfg_file[2] = "encoder_lowdelay_P_jvet10";
#$main_cfg_file[3] = "encoder_randomaccess_jvet10";

my @gp=();
push(@gp,22);
push(@gp,27);
push(@gp,32);
push(@gp,37);

my $i=0;
foreach my $mainCase (@main_cfg_file)
{
	for (my $j=0;$j<(scalar @seq_name);$j++)
	{
		foreach my $quant(@gp)
		{
			my $batch_file_name	= "TestCases_$mainCase/$seq_name[$j][0]\_$quant.bat";
			my $encoderExe    	= "..\\A_exes\\TAppEncoder.exe";
			my $decoderExe		= "..\\A_exes\\TAppDecoder.exe";
			my $mainCfGFile		= "..\\A_cfg_main\\$mainCase.cfg";
			my $sequenceFile	= "..\\..\\1_cfg_perSequence\\$seq_name[$j][0].cfg";
			my $binFile		= "A_result_bins\\str_$seq_name[$j][0]\_$quant.bin";
			my $encoderResultYuv	= "A_result_yuvs\\enc_$seq_name[$j][0]\_$quant.yuv";
			my $decoderResultYuv	= "A_result_yuvs\\dec_$seq_name[$j][0]\_$quant.yuv";
			my $encoderLogFile	= "A_result_logs\\enc_$seq_name[$j][0]\_$quant.log";
			my $decoderLogFile	= "A_result_logs\\dec_$seq_name[$j][0]\_$quant.log";
		
			open BATCH_FILE, "> $batch_file_name" or die "Cannot create batch file: $!\n";
	
			print BATCH_FILE "\@echo off\n";
			print BATCH_FILE "cls\n";
			print BATCH_FILE "echo current folder=%cd%\n";
			print BATCH_FILE "set testCaseNumber=T$i\n";
			print BATCH_FILE "set testCaseName=$seq_name[$j][0]\n";
			print BATCH_FILE "set testCaseQuantization=$quant\n";
			#print BATCH_FILE "set intra_period=$seq_name[$j][1]\n";
			
			print BATCH_FILE "echo execute encoder for test_case=%testCaseName% test_number=%testCaseNumber% quantization=%testCaseQuantization%\n";
			#print BATCH_FILE "$encoderExe -c $mainCfGFile -c $sequenceFile -b $binFile -o $encoderResultYuv -q $quant -ip $seq_name[$j][1] >$encoderLogFile\n";
			print BATCH_FILE "$encoderExe -c $mainCfGFile -c $sequenceFile -b $binFile -o $encoderResultYuv -q $quant >$encoderLogFile\n";
	
			print BATCH_FILE "\n";
	
			print BATCH_FILE "echo execute decoder for test_case=%testCaseName% test_number=%testCaseNumber% quantization=%testCaseQuantization%\n";
			print BATCH_FILE "$decoderExe -b $binFile -o $decoderResultYuv >$decoderLogFile\n";
		
			close BATCH_FILE;
			$i++;
		}
	}
}
# lammps_education_gcmc_win


------------------------------------------------------------------------------
�� lammps

�� lammps�̃C���X�g�[��
1. http://packages.lammps.org/windows.html ��HP��"their own download area"�Ɓh64bit�h���N���b�N����
  �iLAMMPS Binaries Repository: ./admin/64bit�j
2. LAMMPS-64bit-18Jun2019.exe ���_�E�����[�h���ĉ𓀂���
3. �f�B�t�H���g�̐ݒ�̂܂܍Ō�܂Ői�߂΂悢
�ȏ�� lammps �̃_�E�����[�h�Ɛݒ�͊����ł�
�� �z�z����HP���ύX��������Ȃǂ��āA�ʂ̃o�[�W������lammps���g���K�v�ɂȂ����ꍇ�ɂ́Arun.bat��["C:\Program Files\LAMMPS 64-bit 18Jun2019\bin\lmp_serial.exe" -in in.lmp]�̕������C���X�g�[������lammps�̃o�[�W�����ɑΉ�������̂ɏ��������Ă��������B�܂���[C:\Program Files\LAMMPS 64-bit **********]������������Ƃ������@������܂�

�� �`��\�t�g�ignuplot��Ovito�j
 �Egnuplot�ihttp://www.gnuplot.info/�j
  http://www.yamamo10.jp/yamamoto/comp/gnuplot/inst_win/index.php
�EOvito�ihttps://www.ovito.org/windows-downloads/�j
�� web��ɏ�񂪂���܂��̂ŁA���萔�����������܂����A����������Q�Ƃ�������
�� gnuplot�̃C���X�g�[���Ɗ��ݒ� (Edit: Dec/11/2020)
1. gnuplot - Browse /gnuplot at SourceForge.net ���� gp528-win64-mingw.exe �𓾂�
  gp528-win64-mingw.exe ���_�u���N���b�N�B�ݒ�̓f�B�t�H���g�̂܂܂ł悢
2. �R���g���[�� �p�l�� > �V�X�e���ƃZ�L�����e�B > �V�X�e��
3. �V�X�e���̊��ݒ� > ���ϐ��iN�j... > �V�X�e�����ϐ��iS�j��Path > �ҏW�iI�j... > �V�K�iN�j> C:\Program Files\gnuplot\bin ��ǉ����� > OK > OK

�� Microsoft MPI�iMSMPI�j�� (Edit: May/15/2023 �ǋL)�i�����j
1. MSMPI�ł� https://rpm.lammps.org/windows/admin/64bit/index.html �������ł��܂��BLAMMPS-64bit-22Dec2022-MSMPI-admin.exe ���_�E�����[�h���Ă��������B
2. "tutorial_7_gcmc_H2_seq_MSMPI"��MSMPI�łɑΉ����܂��B"run_msmpi.bat"����"set ncore=4"�̐��l�̕����i�����ł�4�j�����v�Z������CPU���ɕύX���Ă��������B"in.lmp2"�t�@�C���ł�ovito�̓��̓t�@�C���ł���cfg���o�͂����悤�ɕύX���Ă��܂��i�R�����g����O���Ă��܂��j�̂ł����ӂ��������iH2�K�X��1�̋��Ƃ��ĕ`�悳���悤�ɂ��Ă��܂��j�B���̃t�H���_�ł����p�������ꍇ�͎Q�l�ɂ��Ă��������i"run_msmpi.bat"�����̂܂܃R�s�[&�y�[�X�g���Ă����삷�邩������܂���B������{�l�ł����ڍׂ�Y��Ă��܂��܂����B�\����Ȃ��ł��B���m�F�j�B
�� Microsoft MPI v10.1.2
�� MPICH2���̂̃C���X�g�[����window11�ł͂��ώG�ɂȂ��Ă��܂��̂�lammps��MS-MPI�ł͂��肪�����ł��B

�� MPI�� (Edit: May/19/2023 �ǋL)�i�񐄏��j
1. MPI�ŁiMPICH2�Łj�� https://rpm.lammps.org/windows/admin/64bit/index.html �������ł��܂��BLAMMPS-64bit-28Mar2023-MPI-admin.exe ���_�E�����[�h���Ă��������B
2. "tutorial_7_gcmc_H2_seq_MPI"��MPI�łɑΉ����܂��BPowerShell���Ǘ��҂Ƃ��ĊJ���܂��B
3. "set_mpich2.bat"���Ǘ��҂Ƃ��ĊJ����PowerShell�Ƀh���b�O&�h���b�v����Enter�������܂��B
4. "run_mpi.bat"���Ǘ��҂Ƃ��ĊJ����PowerShell�Ƀh���b�O&�h���b�v����Enter�������܂��B
5. �t�@�C���ɂ��Ă̒��ӎ�����MSMPI�łƓ����ł��B
���umpich2-1.4.1p1-win-x86-64.msi �ł�".NET Framework version 2.0.50727"���K�v�ł��v�Ƃ�����ʂ��\������܂��B���̏ꍇ�ɂ� Microsoft .NET Framework 3.5 ��google�ȂǂŌ������ă_�E�����[�h���܂��B"dotNetFx35setup.exe"�����s���܂��B
�� ���̏������Ă�����iWindows 11 Home, Intel Core(TM) i7-12700, 32.0 GB�j�ł́AMPI�ł͌v�Z���x���x���̂ɉ����ăG���[�������������ߔ񐄏��ł��B����AMSMPI�ł͍���������ɓ��삷��B

�� ���ӓ_ (Edit: May/15/2023 �ǋL)
�Egnuplot�Ƀp�X��ʂ��Ă��Ȃ��Ɛ��������삵�܂���Bgnuplot�̃p�X�̐ݒ肪����ꍇ�́A"stats.bat"�̃t�@�C������"gnuplot"���p�X���܂߂��L�q�ɕύX���܂��Btutorial_7_gcmc_H2_seq�ł͕ύX�ς݂̂��̂����Ă��܂��Bgnuplot���C���X�g�[������Ƃ��Ƀp�X��ύX���Ă��܂����ꍇ��gnuplot�̃C���X�g�[���[���̏����ݒ�ł̃p�X���ύX���ꂽ�肵���ꍇ�Ȃǂ͏��������Ă��������B
�� ����Windows 11��MSMPI�ł�MPI�ł̓���m�F�������o�[�W�����́Agnuplot�ł�"gp546-win64-mingw-2.exe"�AOvito�ł�"ovito-basic-3.8.4-win64.exe"�ƂȂ�܂��B
------------------------------------------------------------------------------
�� GCMC�i�O�����h�J�m�j�J�������e�J�����V�~�����[�V�����j


�� ���̓t�@�C���̃_�E�����[�h
    by-student-2017 �� lammps_education_gcmc_win ( https://github.com/by-student-2017/lammps_education_gcmc_win ) ������̓t�@�C�����_�E�����[�h���ĉ𓀂���B�E����[Clone or download]���N���b�N���Ă��������ƁADownload ZIP ���\������܂�


�� �V�~�����[�V�����̎��s
1. �e��̃t�H���_�̒��ɂ���run.bat���_�u���N���b�N����Όv�Z������
  �����Čv�Z����ꍇ�i������ς��Ă��ǂ��j��run_restart.bat���_�u���N���b�N����Όv�Z������
2. cfg��Ovito�ŊJ���΍\����������
3. plot�ƋL�ڂ̂���t�@�C�����_�u���N���b�N����ΐ}��������
  �� ���x���ړI�̒l�ɂȂ��Ă��邩�A�G�l���M�[�����̒l�ɂȂ��Ă��邩���m�F���Ă݂Ă�������
�� �ȏ�̎菇�́Adata.ch�ɂ��錴�q�̏�������������Α��̒Y�����f�iC-H�j�ł����l�Ɍv�Z���\�ł��iAvogadro�Ȃǂ̃t���[�\�t�g��p���č\���̃t�@�C���idata.ch�j�������������܂��j


�� tutorial_7_gcmc_He
  He�K�X�̐�΋z���ʂ̃V�~�����[�V����
  �Ō�ɏo�͂����f�[�^�ilog.lammps�ɂ����l�ł��j
  �ŏ���3��̓X�e�b�v���A���x[K]�A����[bar]�ł��B
  �Ō��4��͍����珇��He���q�̐��AC���q�̐��AH���q�̐��Awt.%�ƂȂ��Ă��܂��B
  cfg�̃t�@�C����gcmc�̕t���ĂȂ����̂����t�������i�\�������肷��܂ł܂����j�̂��̂ŁAgcmc�ƕt�������̂�He�K�X�����Ă������ꍇ�ɂȂ�܂��B


�� tutorial_7_gcmc_Ar
  Ar�K�X�̐�΋z���ʂ̃V�~�����[�V����
  �ŏ���3��̓X�e�b�v���A���x[K]�A����[bar]�ł��B
  �Ō��4��͍����珇��Ar���q�̐��AC���q�̐��AH���q�̐��Awt.%�ƂȂ��Ă��܂��B

�� tutorial_7_gcmc_N2
  ���f���q�iN2�j����g�Ƃ��ċߎ������ꍇ��N2�K�X�[�U�̃V�~�����[�V����
  N2�̕��q����̋��Ƃ���Ovito��ŕ\������܂��i���f����N�ɂ��Ă���j
  �ŏ���3��̓X�e�b�v���A���x[K]�A����[bar]�ł��B
  �Ō��4��͍����珇��N2���q�̐��AC���q�̐��AH���q�̐��Awt.%�ƂȂ��Ă��܂��B


�� tutorial_7_gcmc_H2
  ���f���q�iH2�j����g�Ƃ��ċߎ������ꍇ��H2�K�X�̐�΋z���ʂ̃V�~�����[�V����
  H2�̕��q����̋��Ƃ���Ovito��ŕ\������܂��i���f����H�ɂ��Ă���j
  �ŏ���3��̓X�e�b�v���A���x[K]�A����[bar]�ł��B
  �Ō��4��͍����珇��H2���q�̐��AC���q�̐��AH���q�̐��Awt.%�ƂȂ��Ă��܂��B


�� tutorial_7_gcmc_CO2
  ��_���Y�f���q�iCO2�j����g�Ƃ��ċߎ������ꍇ��CO2�K�X�̐�΋z���ʂ̃V�~�����[�V����
  CO2�̕��q����̋��Ƃ���Ovito��ŕ\������܂��i���f����O�ɂ��Ă���j
  �ŏ���3��̓X�e�b�v���A���x[K]�A����[bar]�ł��B
  �Ō��4��͍����珇��CO2���q�̐��AC���q�̐��AH���q�̐��Awt.%�ƂȂ��Ă��܂��B


�� He�K�X�͎��e�ς̑���Ɏg���܂��B


�� cfg�̃t�@�C����gcmc�̕t���ĂȂ����̂����t�������i�\�������肷��܂ł܂����j�̂��̂ŁAgcmc�ƕt�������̂��ړI�̃K�X�����Ă������ꍇ�ɂȂ�܂��B


�� �ʏ�A��������͉ߏ�z���ʁiexcess adsorption uptake�j�������܂��B���̂��߁A�������ʂƔ�r���邽�߂ɂ́A�v�Z���瓾��ꂽ��΋z���ʁiabsolute adsorption uptake�j����z���ނ������Ƃ��̃K�X�̗ʂ������ĉߏ�z���ʂŔ�r����K�v������܂��B���ɉߏ�z���ʂ̌v�Z��������Ă��܂��B


�� �����l�����K�X���z�����Ă���ꍇ�́A�v�Z�ɗp���Ă���|�e���V���������i�[�h�W���[���Y�ilj�j�|�e���V���������ł͂Ȃ����߁A���w�z���̌��ʂ��o�Ă���\��������܂��B�K�X-�K�X�Ԃ�lj�|�e���V�����݂̂ɂȂ��Ă��܂��B


�� �t�@�C���̒������Ă���������΁A���̃K�X�ł����l�̌v�Z�͉\�ł��B�������A���̃t�@�C���ł̌v�Z�ł́ACO2�Ȃǂ̕��q�͈�̋��ɋߎ������p�����[�^��p���Ă̌v�Z�ɂȂ�܂��i�v�Z���Ă���R�[�h��lammps�ł͂���܂��񂪁A�_���ł����̂悤�ɂ��Čv�Z����Ă���Ⴊ��������܂��j�B������ƕ��q�Ƃ��Ĉ��������ꍇ�́A�����́uLammps (GCMC, Mg(OH)2)�v�Ȃǂ��Q�l�ɂ��Ă��������B


�� ���̓t�@�C���Ŏw�肵�Ă��鉷�x�A���͂ɂ��邱�Ƃ͓�����ߏo�̓t�@�C���ilog.lammps�j�Ŏ��������l�Ō������Ă��������B


�� replicate 1 1 1 �̒l��ς���Ƃ��̐��l�̕������P�ʖE�̍\�������т܂��B


�� �K�X���[�U���Ă����ƁAlammps�̐��l�v�Z��A�K�X�̑����ŉ��x���ϓ����܂��Bin.lmp�ł� tfac_insert �̌�̐��l��ς�����A"variable   temp2 index"�̌�̒l��ς���Ȃǂ��Ă݂Ă��������Btfac_insert�̌�̒l��ς��邱�Ƃ��������͂��ł����A���̓��͗�̏ꍇ�͂قƂ�ǋ@�\���܂���ł����Btemp1�͉������iNPT�ł̐���j�̖ڕW�Ƃ��鉷�x�ł��B


�� ���͂̐��䂪���ɓ���ł��B���̂��ߑO��̍\���ƌ��q�̑��x��p���ď����ς��čČv�Z���\�ȃt�@�C�����Y�t���Ă��܂��Blammps�̌v�Z�I�ɂ̓K�X�̋������̈��͂�in.lmp��in.lmp_restart��"variable   pres index 1.0"�Ŏw�肵���l�ƂȂ��Ă���͂��ł����A�S�̂̈��͔͂��ɗ��������Ă��܂��B���Ԃ�����ꍇ�͉��x��run_restart.bat���J��Ԃ��Ă݂Ă��������B


�� ���̗�ł�mu�̒l��MOPAC�̌v�Z�œ���ꂽ�t�F���~���ʋߖT�̃G�l���M�[��p���Ă��܂����A�}�j���A���i https://lammps.sandia.gov/doc/fix_gcmc.html �j�ɂ��鎮��id=kT*ln�i��P��^3/kT�j�Ōv�Z�����l����͂��邱�Ƃ��������Ǝv���܂��B�ł����A���̓��͗�̂悤��gcmc�̕����ň��́ipressure�j���w�肵�Ă���ꍇ��mu�̒l������������lammps�̃}�j���A���ɏ�����Ă��܂��B


�� ��A��GCMC�̓��̓t�@�C���̐ݒ�ɂ��ẮA���ꂪ�œK�Ƃ����킯�ł͂���܂���B���̂��߁A����ɗǂ����̓t�@�C���ƂȂ�悤�ɕ׋���i�߂Ă��������B��낵�����肢�v���܂��B


�� seq�ƕt�����t�@�C���͎w�肵�����x�ň�A�̈��͂��v�Z���܂��B�������ɂ�run.bat�̉��x�ƈ��͂̐��������������āi���͍͂폜���ǉ����\�ł��jrun.bat���N���b�N���邾���ł��Breplace��2 2 2�ɂȂ��Ă���̂ł����ӂ��������Brun_seq_tps.bat�͓����Ŏw�肵�Ă��鉷�x�ƈ��͂Ǝ��ԂŌv�Z���Ă���܂��B


�� �ߏ�z���ʂ��v�Z���邽�߂�Excel�V�[�g�̗�����Ă����܂����BZTC�ł̗��[ZTC_H2_and_He_example.xlsx]�A��ʓI�ȃe���v���[�g�̗��[CxHy_H2_and_He_template.xlsx]�ƂȂ�܂��B�Q�l�ɂȂ�΍K���ł��B�L�ڂ���Ă��鉷�x�ł͋z���ނ̖����ꍇ��H2��He���v�Z����Ă��܂��B�z���ނ̂���ꍇ�ł�H2��He���v�Z����΂悢�悤�ɂȂ��Ă��܂��B

--------------------------------------------------
�� �ߏ�z���ʂ̌v�Z�̂��߂̃K�X�݂̂�GCMC�v�Z


�� tutorial_7_gcmc_He_only
  100^3 [Angstrom^3]�̋�Ԃ�He�K�X���[�U�����ꍇ�̃V�~�����[�V����
  �Ō�ɏo�͂����f�[�^�ilog.lammps�ɂ����l�ł��j
  �ŏ���3��̓X�e�b�v���A���x[K]�A����[bar]�ł��B
  �Ō��4��͍����珇��He���q�̐��A���x�ƂȂ��Ă��܂��B
  �� ���̓��͗�ł͖�90/100^3 [He���q�̐�/Angstrom^3]�̒l�ɂȂ�܂����B


�� tutorial_7_gcmc_N2_only
  120^3 [Angstrom^3]�̋�Ԃ�He�K�X���[�U�����ꍇ�̃V�~�����[�V����
  �Ō�ɏo�͂����f�[�^�ilog.lammps�ɂ����l�ł��j
  �ŏ���3��̓X�e�b�v���A���x[K]�A����[bar]�ł��B
  �Ō��4��͍����珇��N2���q�̐��A���x�ƂȂ��Ă��܂��B
  �� ���̓��͗�ł͖�180/120^3 [N2���q�̐�/Angstrom^3] = ��360/120^3 [N���q�̐�/Angstrom^3]�̒l�ɂȂ�܂����B


�� tutorial_7_gcmc_H2_only
  110^3 [Angstrom^3]�̋�Ԃ�He�K�X���[�U�����ꍇ�̃V�~�����[�V����
  �Ō�ɏo�͂����f�[�^�ilog.lammps�ɂ����l�ł��j
  �ŏ���3��̓X�e�b�v���A���x[K]�A����[bar]�ł��B
  �Ō��4��͍����珇��H2���q�̐��A���x�ƂȂ��Ă��܂��B
  �� ���̓��͗�ł͖�120/110^3 [H2���q�̐�/Angstrom^3] = ��240/120^3 [H���q�̐�/Angstrom^3]�̒l�ɂȂ�܂����B


�� �ߏ�z���ʂ̌v�Z��
  ��̗�Ŏ�����ZTC�ł�He���q�̐�΋z���ʂ�He���q�Ŗ�22�ƂȂ��Ă����̂ŁA22/90*100^3 = 244444.444 [Angstrom^3]�̑̐ςƂȂ�܂��B��������H2���q��"tutorial_7_gcmc_H2_only"�̗Ⴉ��120/110^3*244444.444=22.039�ƂȂ�܂��B��΋z���ʂ̌v�Z�ł�H2���q�͖�75�ł�������A�ߏ�z���ʂł�H2���q��55-22=33�ƂȂ�܂��B�����ZTC�̗�ł��ƁA�ߏ�z���ʂ�33*2/(288*12+72+33*2)*100=1.83 wt%�ƌv�Z�ł��܂��B��΋z���ʂ�55*2/(288*12+72+55*2)*100=3.02 wt%�ƂȂ�܂��B�_���ł́APeng-Robinson���������瓾����He�̃o���N�C���̃������x�Ƒ�2�r���A���W�����瓾����׍E�e�ς��|���i�������x*�׍E�e�ρj�����̂��΋z���ʂ��獷���������l���ߏ�z���ʂƂ���i https://people.bath.ac.uk/td222/research/excess/index.html �j���@���̗p���ꂽ�肵�܂��i���̕��@�̕����G���K���g�ȋ��ߕ��ł���Ƃ͎v���Ă��܂��j�B���̂Ȃ�΁A�����ɏ��������@�ł��ƁA�덷���傫���i�����Č덷�`���������Ȃ�j�A���͂�ς����ꍇ�ɖړI�̉��x�Ɏ�������悤�ɍŒ�ȃp�����[�^�𒲐����Ȃ���΂Ȃ�Ȃ����߂ł��B�_���ɂ���ꍇ�͘_���ŏ�����Ă�����@�ɂ��邩�܂��͍���̕��@���܂߂������̌��ʂ������Ă����Ɨǂ��Ǝv���܂��i�G���[�o�[��ǉ�����̂���؂ł��j�B�����ihttps://thesis.library.caltech.edu/7198/59/Stadie_N_2013_Chapter4.pdf�j�ɂ��ƁA77 K��0.1 MPa�ɂ�����ZTC�̉ߏ�z���ʂ�2.2 wt%�ƂȂ��Ă��܂��B


�� ����̗�ł́A��ʂɋz���ނƋ������ݍ�p���ɂ����ƍl������He�K�X��p���č׍E�e�ς����߂Ă��܂��B


�� ����́A��Ԃ̑傫���Ə����ɔz�u���錴�q���̐��𒲐����āA�ړI�̉��x�Ŏ������₷���Ȃ�悤�ɂ��Ă��܂��B�}�j���A���i https://lammps.sandia.gov/doc/fix_gcmc.html �j�ɂ�in.lmp�ł�tfac_insert �̌�̐��l��ς���Ƃ̋L�q������܂��i https://lammps.sandia.gov/threads/msg64926.html �Ȃǂ��Q�l�ɂȂ�j�B


�� ��A��GCMC�̓��̓t�@�C���̐ݒ�ɂ��ẮA���ꂪ�œK�Ƃ����킯�ł͂���܂���B���̂��߁A����ɗǂ����̓t�@�C���ƂȂ�悤�ɕ׋���i�߂Ă��������B��낵�����肢�v���܂��B


�� �ړI�̉��x�∳�͂Ɏ��������邽�߂̏��
  ���x�∳�͂̏�����ς����Ƃ��ɏ�肭�ړI�̉��x�Ɏ������Ȃ����Ƃ�����܂��B�ȉ��ɗD��I�ɒl��ς���Ƃ悢�p�����[�^�������܂��B
�Evariable   temp2 index 77.0 # GCMC�Ƃ��̑O�����̒i�K�Őݒ肵�Ă��鉷�x�B�z������K�X����z���ނ̔M������Ă���̂ł��傫�Ȓl�ɂ����肷�邱�Ƃł��ł���B
�Evariable   pres index 1.0 # 0.1 MPa (bar units)
�Evariable   tfac index 1.0  # ���x��������ꍇ�͑傫�Ȓl�ɂ���
�Evariable   fs   index 0.0005 # 1�X�e�b�v�̎��ԁB�r���ŃG���[���o��ꍇ�ɂ͂�菬���Ȓl�ɂ���
�Evariable   ps   index 20 # �e�����i�����̌v�Z�Ȃǁj�ł̌v�Z���ԁB�܂��������Ȃ��ꍇ�͂��傫�Ȓl�ɂ���
�Evariable   ps_gcmc index 30 # �e�����iGCMC�̌v�Z�j�ł̌v�Z���ԁB�܂��������Ȃ��ꍇ�͂��傫�Ȓl�ɂ���
�E${tdamp} # ���x�̎�������肭�����Ȃ��ꍇ�͂��̒l��${fs}*100����ς���i����GCMC�̂Ƃ���j
  fs�̒l��"variable   fs   index 0.0005"�Œ�`���Ă���B
�Evariable   pdamp equal ${fs}*1000 # ���͂̎�������肭�����Ȃ��ꍇ�͂��̒l��ς���
  ��������"run ${nstep}"�ł�${nstep}�𐔒l�ɂ��Ă��悢�B��̗�ł�${ps}/${fs}=20/0.0005�ȂǂƂȂ�悤�ɂ��Ă���B
�Efix f3 gas gcmc ${nfreq} ${natom} ${nmove} 3 761341 ${temp2} ${mu} ${disp} pressure ${pres} tfac_insert ${tfac}
  �ł�${nfreq} ${natom} ${nmove}�͂��ꂼ�ꉺ�ɋL�ڂ̍��ڂ̕����Őݒ肵�Ă��܂��B
  variable   nfreq index 100
  variable   natom index 10
  variable   nmove index 10
  natom�ł̐��l�̕�����ς���Ƒ}�����ꂽ��폜���ꂽ�肷�錴�q�╪�q�̍X�V�p�x���ς��B�l�������������X�V���錴�q�̐������Ȃ��Ȃ�̂Œl���ӂ���悤�ł���Ώ����Ȓl�ɂ��܂����A�����܂ł̎��Ԃ͒����Ȃ�܂��B�������Ȃ������ꍇ��ps_gcmc�̒l��傫�����Ă��������i�ڍׂ̓}�j���A�����Q�Ƃ��������j


�� MPa(input), number of Gas, (spacing)
���L���v�Z���Ȃ��������̂� H2_and_He.xlsx �ɂ���܂��B
----------
He (77 K)

	0.1 MPa,   ��90/100^3 [He���q�̐�/Angstrom^3], 30.0
	0.2 MPa,  ��176/100^3 [He���q�̐�/Angstrom^3], 24.2
	0.3 MPa,  ��250/100^3 [He���q�̐�/Angstrom^3], 22.0
	0.5 MPa,  ��390/100^3 [He���q�̐�/Angstrom^3], 18.2
	0.7 MPa,  ��500/100^3 [He���q�̐�/Angstrom^3], 16.3
	1.0 MPa,  ��660/100^3 [He���q�̐�/Angstrom^3], 15.0
	3.0 MPa, ��1270/100^3 [He���q�̐�/Angstrom^3], 11.8
	5.0 MPa, ��1620/100^3 [He���q�̐�/Angstrom^3], 10.9
	
	10.0 MPa, ��2050/100^3 [He���q�̐�/Angstrom^3], 10.0
	35.0 MPa, ��2740/100^3 [He���q�̐�/Angstrom^3],  9.1
	70.0 MPa, ��3115/100^3 [He���q�̐�/Angstrom^3],  8.6


H2 (77 K)

	0.1 MPa,  ��120/110^3 [H2���q�̐�/Angstrom^3], 29.0
	0.2 MPa,  ��250/110^3 [H2���q�̐�/Angstrom^3], 23.0
	0.3 MPa,  ��410/110^3 [H2���q�̐�/Angstrom^3], 19.8
	0.5 MPa,  ��665/110^3 [H2���q�̐�/Angstrom^3], 16.4
	0.7 MPa,  ��900/110^3 [H2���q�̐�/Angstrom^3], 14.5
	1.0 MPa, ��1340/110^3 [H2���q�̐�/Angstrom^3], 12.95
	3.0 MPa, ��4410/110^3 [H2���q�̐�/Angstrom^3],  8.6
	5.0 MPa, ��8140/110^3 [H2���q�̐�/Angstrom^3],  7.0
----------
He (298 K)

	1.0 MPa,  ��240/100^3 [He���q�̐�/Angstrom^3], 22.0
	5.0 MPa,  ��690/100^3 [He���q�̐�/Angstrom^3], 14.3
	10.0 MPa, ��1200/100^3 [He���q�̐�/Angstrom^3], 12.1
	15.0 MPa, ��1450/100^3 [He���q�̐�/Angstrom^3], 11.2
	30.0 MPa, ��1950/100^3 [He���q�̐�/Angstrom^3], 10.2
	50.0 MPa, ��2280/100^3 [He���q�̐�/Angstrom^3],  9.8
	70.0 MPa, ��2520/100^3 [He���q�̐�/Angstrom^3],  9.2


H2 (298 K)

	1.0 MPa,  ��320/110^3 [H2���q�̐�/Angstrom^3], 21.7
	5.0 MPa, ��1525/110^3 [H2���q�̐�/Angstrom^3], 12.4
	10.0 MPa, ��3000/110^3 [H2���q�̐�/Angstrom^3],  9.8
	15.0 MPa, ��4200/110^3 [H2���q�̐�/Angstrom^3],  8.6
	30.0 MPa, ��7350/110^3 [H2���q�̐�/Angstrom^3],  7.2
	50.0 MPa,��10500/110^3 [H2���q�̐�/Angstrom^3],  6.5
	70.0 MPa,��12700/110^3 [H2���q�̐�/Angstrom^3],  6.0
	
----------
He�͌��q�̌��AH2�͕��q�̌��Ƃ��ċL��

	ZTC ( 0.1 MPa,  77 K): He 22��, H2  55��, excess 1.83 wt.%, absolute 3.02 wt.%
	ZTC ( 0.5 MPa,  77 K): He 22��, H2  77��, excess 2.69 wt.%, absolute 4.18 wt.%
	ZTC ( 3.0 MPa,  77 K): He 23��, H2 116��, excess 3.07 wt.%, absolute 6.17 wt.%
	ZTC ( 5.0 MPa,  77 K): He 25��, H2 127��, excess 4.23 wt.%, absolute 6.72 wt.%
	
	ZTC ( 5.0 MPa, 298 K): He  8��, H2  17��, excess 0.21 wt.%, absolute 0.95 wt.%
	ZTC (15.0 MPa, 298 K): He 12��, H2  35��, excess 0.50 wt.%, absolute 1.95 wt.%
	ZTC (30.0 MPa, 298 K): He 15��, H2  50��, excess 0.42 wt.%, absolute 2.77 wt.%
	ZTC (50.0 MPa, 298 K): He 17��, H2  65��, excess 0.35 wt.%, absolute 3.55 wt.%
	ZTC (70.0 MPa, 298 K): He 18��, H2  75��, excess 0.38 wt.%, absolute 4.10 wt.%
	
--------------------------------------------------
�� ���q����̋��Ƌߎ����Ȃ��ꍇ


�� tutorial_7_gcmc_CO2_v2
  �g�����͂���܂łƓ��l�ł��B


�� tutorial_7_gcmc_H2O_v2
  �g�����͂���܂łƓ��l�ł��B


�� tutorial_7_gcmc_N2_v2
  �g�����͂���܂łƓ��l�ł��B


�� tutorial_7_gcmc_H2_v2
  �g�����͂���܂łƓ��l�ł��B


�� �����܂ł����݂̎��̎��͂ō쐬����Ȃ�΂Ƃ��������ł̎Q�l��ł��B�p�����[�^���œK�����Ă��܂���B���ꂪ�œK�Ƃ����킯�ł͂���܂���̂ŁA���ǂ����̓t�@�C���ƂȂ�悤�Ƀp�����[�^�𒲐߂����肵�ĕ׋���i�߂Ă��������B��낵�����肢�v���܂��B

------------------------------------------------------------------------------
�� COMB (Charge-Optimized Many-Body) potential


�� tutorial_8_comb3


�� tutorial_8_comb3_gcmc_He


�� tutorial_8_comb3_gcmc_He_cho


�� �F�X�Ǝ����Ă݂܂������A���܂̎��̎��́i2019�N���j�ł́Areaxff��lj�̃|�e���V�����������ŗp����gcmc�̓��̓t�@�C������邱�Ƃ��ł��܂���ł����B���̂��߁AC-H-O�p�̂��߂�COMB�|�e���V������p�������̓t�@�C���̗���쐬���Ă݂܂����B

------------------------------------------------------------------------------


# Google Colaboratory
## 1 Run
	%cd /content
	!apt update
	!apt install -y lammps
	!apt install -y git python csh gnuplot
	!git clone https://github.com/by-student-2017/lammps_education_gcmc_win
	import os
	os.environ["OMP_NUM_THREADS"] = "1,1"
	os.environ["MKL_NUM_THREADS"] = "1"
	%cd /content/lammps_education_gcmc_win
	!cp runtmp.csh run.csh
	!sed -i "s/XXXXX/273.15/g" run.csh
	!sed -i "s/YYYYY/100.0/g" run.csh
	!sed -i "s/ZZZZZ/160/" run.csh
	!chmod +x run.csh
	%cd /content/lammps_education_gcmc_win/tutorial_7_gcmc_H2_seq
	!/content/lammps_education_gcmc_win/run.csh
	!cat info.txt


XXXXX is temperature [K]


YYYYY is pressure [MPa]


ZZZZZ is simulation time [ps] for GCMC part. (type integer)


## 2 Run
	%cd /content
	!apt update
	!apt install -y lammps
	!apt install -y git python csh gnuplot
	!git clone https://github.com/by-student-2017/lammps_education_gcmc_win
	import os
	os.environ["OMP_NUM_THREADS"] = "1,1"
	os.environ["MKL_NUM_THREADS"] = "1"
	%cd /content/lammps_education_gcmc_win
	!cp runtmp.csh run.csh
	!sed -i "s/XXXXX/273.15/g" run.csh
	!sed -i "s/YYYYY/5.0 15.0/g" run.csh
	!sed -i "s/ZZZZZ/60/" run.csh
	!chmod +x run.csh
	%cd /content/lammps_education_gcmc_win/tutorial_7_gcmc_He_seq
	!/content/lammps_education_gcmc_win/run.csh
	!cat info.txt


------------------------------------------------------------------------------


# plot the temperature of each atom

- seq_MSMPI version file
1. *.cfg -> Ovito -> (upper right) Add modification... 
2. Color coding -> Input property: f_ave_tempatom
3. (click) Adjust range


------------------------------------------------------------------------------


# Input file


## Metal

[IFM1] M. Li et al., Nanomaterials 9 (2019) 347.
  https://doi.org/10.3390/nano9030347 (Graphene, The temperature of each atom)


[IFM2] P. Malakar et al., ACS Appl. Nano Mater. 5 (2022) 16489-16499.
  https://doi.org/10.1021/acsanm.2c03564 (lammps input file)


[IFM3] S. K. Achar et al., J. Chem. Theory Comput. 18 (2022) 3593-3606.
  https://doi.org/10.1021/acs.jctc.2c00010


[IFM4] M. Qamar et al., J. Chem. Theory, Comput. XXX (2023) XXX-XXXX.
  https://doi.org/10.1021/acs.jctc.2c01149


[IFM5] Y. A. Zulueta et al., Inorg. Chem. 59 (2020) 11841-11846.
  https://doi.org/10.1021/acs.inorgchem.0c01923 (Transition-Metal-Doped Li2SnO3)


## Other

[IFO1] P. G. Boyd et al., J. Phys. Chem. Lett. 8 (2017) 357-363.
  https://doi.org/10.1021/acs.jpclett.6b02532 (MOF)


[IFO2] K. Banlusan et al., J. Phys. Chem. C 119 (2015) 25845-25852.
  https://doi.org/10.1021/acs.jpcc.5b05446 (MOF)


[IFO3] M. Witman et al., J. Phys. Chem. Lett. 10 (2019) 5929-5934.
  https://doi.org/10.1021/acs.jpclett.9b02449 (MOF)


[IFO4] J. P. Ruffley et al., J. Phys. Chem. C 124 (2020) 19873.
  https://doi.org/10.1021/acs.jpcc.0c07650 (MOF)


[IFO5] R. Anderson et al., Chem. Mater, 32 (2020) 8106-8119.
  https://doi.org/10.1021/acs.chemmater.0c00744 (MOF)


[IFO6] A. v. Wedelstedt et al., J. Chem. Inf. Model. 62 (2022) 1154-1159.
  https://doi.org/10.1021/acs.jcim.2c00158 (input file of MOF on Lammps and CP2k code)


[IFO7] J. J. Wardzala et al., J. Phys. Chem. C 124 (2020) 28469-28478.
  https://doi.org/10.1021/acs.jpcc.0c07040 (MOF)


[IFO8] M. C. Oliver et al., J. Phys. Chem. C 127 (2023) 6503-6514.
  https://doi.org/10.1021/acs.jpcc.2c08695 (MOF)


[IFO9] H. Xu et al., J. Chem. Theory Comput. 18 (2022) 2826-2835.
  https://doi.org/10.1021/acs.jctc.2c00094 (MOF)
  https://archive.materialscloud.org/record/2022.37


[IFO10] J. M. Findley et al., J. Phys. Chem. C 125 (2021) 8418-8429.
  https://doi.org/10.1021/acs.jpcc.1c00943 (input file of MOF on Lammps and RASPA code)


[IFO11] A. S. S. Daou et al., J. Phys. Chem. C 125 (2021) 5296-5305.
  https://doi.org/10.1021/acs.jpcc.0c09952 (input file of MOF on Lammps and RASPA code)


[IFO12] Z. Zhu et al., ACS Omega 7 (2022) 37640-37653.
  https://doi.org/10.1021/acsomega.2c04517 (input file of MOF on Lammps and RASPA code)


[IFO13] T. Weng et al., J. Phys. Chem. A 123 (2019) 3000-3012.
  https://doi.org/10.1021/acs.jpca.8b12311 (ZIF-8)


[IFO14] S. Wang et al., J. Chem. Theory Comput. 17 (2021) 5198-5213.
  https://doi.org/10.1021/acs.jctc.0c01132 (Zeolite)


[IFO15] P. Saidi et al., J. Phys. Chem. C 124 (2020) 26864-26873.
  https://doi.org/10.1021/acs.jpcc.0c08817 (GO)


[IFO16] M. L. Urquiza et al., ACS Nano 15 (2021) 12945-12954.
  https://doi.org/10.1021/acsnano.1c01466 (HfO2)


[IFO17] M. Deffner et al., J. Chem. Theory Comput. 19 (2023) 992-1002.
  https://doi.org/10.1021/acs.jctc.2c00648


[IFO18] W. A. Pisani et al., Ind. Eng. Chem. Res. 60 (2021) 13604-13613.
  https://doi.org/10.1021/acs.iecr.1c02440


[IFO19] K. Goloviznina et al., J. Chem. Theory Comput. 17 (2021) 1606-1617.
  https://doi.org/10.1021/acs.jctc.0c01002


[IFO20] C. Han et al., J. Phys. Chem. C 124 (2020) 20203-20212.
  https://doi.org/10.1021/acs.jpcc.0c05942


[IFO21] S. Sharma et al., J. Phys. Chem. A 124 (2020) 7832-7842.
  https://doi.org/10.1021/acs.jpca.0c06721


[IFO22] E. Braun et al., J. Chem. Theory Comput. 14 (2018) 5262-5272.
  https://doi.org/10.1021/acs.jctc.8b00446


[IFO23] Y. Chen et al., J. Phys. Chem. B 125 (2021) 8193-8204.
  https://doi.org/10.1021/acs.jpcb.1c01966


[IFO24] Y. Zhang et al., J. Phys. Chem. B 124 (2020) 5251-5264.
  https://doi.org/10.1021/acs.jpcb.0c04058


[IFO25] C. M. Tenney et al., J. Phys. Chem. C 117 (2013) 24673-24684.
  https://doi.org/10.1021/jp4039122


[IFO26] S. K. Achar et al., J. Phys. Chem. C 125 (2021) 14874-14882.
  https://doi.org/10.1021/acs.jpcc.1c01411
------------------------------------------------------------------------------
# Structure

[S1] N. Sakhavand et al., ACS Appl. Mater. Interfaces 7 (2015) 18312-18319.
  https://doi.org/10.1021/acsami.5b03967


[S2] M. Agrawal et al., J. Phys. Chem. Lett. 10 (2019) 7823-7830.
  https://doi.org/10.1021/acs.jpclett.9b03119


[S3] R. Thyagarajan et al., Chem. Mater. 32 (2020) 8020-8033.
  https://doi.org/10.1021/acs.chemmater.0c03057
------------------------------------------------------------------------------


## N site
- R. Lv et al., Sci. Reports 2 (2012) 586.: https://doi.org/10.1038/srep00586 (Open Access)
- H. Zhong et al., Angew. Chem. Int. Ed. 53 (2014) 14235-14239.: https://doi.org/10.1002/anie.201408990
- Z. Lin et al., Phys. Chem. Chem. Phys., 14 (2012) 3381-3387.: DOI: 10.1039/C2CP00032F 
- H. Kim et al., Phys. Chem. Chem. Phys., 13 (2011) 17505-17510.


## Activation energy (TS - Reactant)
- About 10 kcal/mol: Reacts at room temperature
- About 20 kcal/mol: takes a very long time at room temperature
- About 25 kcal/mol: Reacts when heated in an oil bath
- Over 30 kcal/mol: Rarely occurs


## Acknowledgment ######################################
- This project (modified version) is/was partially supported by the following :
  + meguREnergy Co., Ltd.
  + ATSUMITEC Co., Ltd.
  + RIKEN
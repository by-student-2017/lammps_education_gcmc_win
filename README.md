# lammps_education_gcmc_win

------------------------------------------------------------------------------
## lammps (windows 11 (64 bit))

## Installation (Lammps)
1. LAMMPS Windows Installer Repository (http://packages.lammps.org/windows.html) -> LAMMPS Binaries Repository: ./legacy/admin/64bit (https://rpm.lammps.org/windows/legacy/admin/64bit/index.html)
2. LAMMPS-64bit-22Dec2022-MSMPI-admin.exe (https://rpm.lammps.org/windows/legacy/admin/64bit/LAMMPS-64bit-22Dec2022-MSMPI-admin.exe)
- LAMMPS Windows Installer Repository -> legacy -> admin -> 64bit -> LAMMPS-64bit-22Dec2022-MSMPI-admin.exe

## Microsoft MPI
1. Microsoft MPI v10.1.2 (https://www.microsoft.com/en-us/download/details.aspx?id=100593)

## Gnuplot, Ovito and Python3
* Gnuplot (http://www.gnuplot.info/)
  http://www.yamamo10.jp/yamamoto/comp/gnuplot/inst_win/index.php
* Ovito (https://www.ovito.org/windows-downloads/)

## Python3 (installation) on PowerShell
1. python3
2. python3 -m pip install numpy

## Usage (MS-MPI version)
1. click run_msmpi.bat
2. cfg folder > click *.cfg
------------------------------------------------------------------------------
# plot the temperature of each atom

- MSMPI_heat_map version file
1. *.cfg -> Ovito -> (upper right) Add modification... 
2. Color coding -> Input property: f_ave_tempatom
3. (click) Adjust range

------------------------------------------------------------------------------
■ lammps

□ lammpsのインストール
1. http://packages.lammps.org/windows.html のHPで"their own download area"と”64bit”をクリックする
  （LAMMPS Binaries Repository: ./admin/64bit）
2. LAMMPS-64bit-18Jun2019.exe をダウンロードして解凍する
3. ディフォルトの設定のまま最後まで進めばよい
以上で lammps のダウンロードと設定は完了です
※ 配布元のHPが変更を加えるなどして、別のバージョンのlammpsを使う必要になった場合には、run.batで["C:\Program Files\LAMMPS 64-bit 18Jun2019\bin\lmp_serial.exe" -in in.lmp]の部分をインストールしたlammpsのバージョンに対応するものに書き換えてください。または[C:\Program Files\LAMMPS 64-bit **********]を書き換えるという方法もあります

□ 描画ソフト（gnuplotとOvito）
 ・gnuplot（http://www.gnuplot.info/）
  http://www.yamamo10.jp/yamamoto/comp/gnuplot/inst_win/index.php
・Ovito（https://www.ovito.org/windows-downloads/）
※ web上に情報がありますので、お手数をおかけしますが、そちらをご参照ください
※ gnuplotのインストールと環境設定 (Edit: Dec/11/2020)
1. gnuplot - Browse /gnuplot at SourceForge.net から gp528-win64-mingw.exe を得る
  gp528-win64-mingw.exe をダブルクリック。設定はディフォルトのままでよい
2. コントロール パネル > システムとセキュリティ > システム
3. システムの環境設定 > 環境変数（N）... > システム環境変数（S）のPath > 編集（I）... > 新規（N）> C:\Program Files\gnuplot\bin を追加する > OK > OK

□ Microsoft MPI（MSMPI）版 (Edit: May/15/2023 追記)（推奨）
1. MSMPI版が https://rpm.lammps.org/windows/admin/64bit/index.html から入手できます。LAMMPS-64bit-22Dec2022-MSMPI-admin.exe をダウンロードしてください。
2. "tutorial_7_gcmc_H2_seq_MSMPI"がMSMPI版に対応します。"run_msmpi.bat"内の"set ncore=4"の数値の部分（ここでは4）を並列計算したいCPU数に変更してください。"in.lmp2"ファイルではovitoの入力ファイルであるcfgも出力されるように変更しています（コメントから外しています）のでご注意ください（H2ガスは1つの球として描画されるようにしています）。他のフォルダでも利用したい場合は参考にしてください（"run_msmpi.bat"をそのままコピー&ペーストしても動作するかもしれません。作った本人ですが詳細を忘れてしまいました。申し訳ないです。未確認）。
※ Microsoft MPI v10.1.2
※ MPICH2自体のインストールがwindow11ではより煩雑になっていますのでlammpsのMS-MPI版はありがたいです。

□ MPI版 (Edit: May/19/2023 追記)（非推奨）
1. MPI版（MPICH2版）が https://rpm.lammps.org/windows/admin/64bit/index.html から入手できます。LAMMPS-64bit-28Mar2023-MPI-admin.exe をダウンロードしてください。
2. "tutorial_7_gcmc_H2_seq_MPI"がMPI版に対応します。PowerShellを管理者として開きます。
3. "set_mpich2.bat"を管理者として開いたPowerShellにドラッグ&ドロップしてEnterを押します。
4. "run_mpi.bat"を管理者として開いたPowerShellにドラッグ&ドロップしてEnterを押します。
5. ファイルについての注意事項はMSMPI版と同じです。
※「mpich2-1.4.1p1-win-x86-64.msi では".NET Framework version 2.0.50727"が必要です」という画面が表示されます。その場合には Microsoft .NET Framework 3.5 をgoogleなどで検索してダウンロードします。"dotNetFx35setup.exe"を実行します。
※ 私の所持している環境（Windows 11 Home, Intel Core(TM) i7-12700, 32.0 GB）では、MPI版は計算速度も遅いのに加えてエラーも発生したため非推奨です。一方、MSMPI版は高速かつ正常に動作する。

□ 注意点 (Edit: May/15/2023 追記)
・gnuplotにパスを通していないと正しく動作しません。gnuplotのパスの設定が難しい場合は、"stats.bat"のファイル中で"gnuplot"をパスを含めた記述に変更します。tutorial_7_gcmc_H2_seqでは変更済みのものを入れています。gnuplotをインストールするときにパスを変更してしまった場合やgnuplotのインストーラー側の初期設定でのパスが変更されたりした場合などは書き換えてください。
※ 私がWindows 11でMSMPI版とMPI版の動作確認をしたバージョンは、gnuplotでは"gp546-win64-mingw-2.exe"、Ovitoでは"ovito-basic-3.8.4-win64.exe"となります。


------------------------------------------------------------------------------
■ GCMC（グランドカノニカルモンテカルロシミュレーション）


□ 入力ファイルのダウンロード
    by-student-2017 の lammps_education_gcmc_win ( https://github.com/by-student-2017/lammps_education_gcmc_win ) から入力ファイルをダウンロードして解凍する。右側の[Clone or download]をクリックしていただくと、Download ZIP が表示されます


□ シミュレーションの実行
1. 各種のフォルダの中にあるrun.batをダブルクリックすれば計算が走る
  続けて計算する場合（条件を変えても良い）はrun_restart.batをダブルクリックすれば計算が走る
2. cfgをOvitoで開けば構造が得られる
3. plotと記載のあるファイルをダブルクリックすれば図が得られる
  ※ 温度が目的の値になっているか、エネルギーが一定の値になっているかを確認してみてください
※ 以上の手順は、data.chにある原子の情報を書きかえれば他の炭化水素（C-H）でも同様に計算が可能です（Avogadroなどのフリーソフトを用いて構造のファイル（data.ch）を作られる方もいます）


□ tutorial_7_gcmc_He
  Heガスの絶対吸着量のシミュレーション
  最後に出力されるデータ（log.lammpsにも同様です）
  最初の3列はステップ数、温度[K]、圧力[bar]です。
  最後の4列は左から順にHe原子の数、C原子の数、H原子の数、wt.%となっています。
  cfgのファイルはgcmcの付いてないものが平衡化処理（構造が安定するまでまつ処理）のもので、gcmcと付いたものがHeガスを入れていった場合になります。


□ tutorial_7_gcmc_Ar
  Arガスの絶対吸着量のシミュレーション
  最初の3列はステップ数、温度[K]、圧力[bar]です。
  最後の4列は左から順にAr原子の数、C原子の数、H原子の数、wt.%となっています。

□ tutorial_7_gcmc_N2
  窒素分子（N2）を一組として近似した場合のN2ガス充填のシミュレーション
  N2の分子を一つの球としてOvito上で表示されます（元素名はNにしてある）
  最初の3列はステップ数、温度[K]、圧力[bar]です。
  最後の4列は左から順にN2分子の数、C原子の数、H原子の数、wt.%となっています。


□ tutorial_7_gcmc_H2
  水素分子（H2）を一組として近似した場合のH2ガスの絶対吸着量のシミュレーション
  H2の分子を一つの球としてOvito上で表示されます（元素名はHにしてある）
  最初の3列はステップ数、温度[K]、圧力[bar]です。
  最後の4列は左から順にH2分子の数、C原子の数、H原子の数、wt.%となっています。


□ tutorial_7_gcmc_CO2
  二酸化炭素分子（CO2）を一組として近似した場合のCO2ガスの絶対吸着量のシミュレーション
  CO2の分子を一つの球としてOvito上で表示されます（元素名はOにしてある）
  最初の3列はステップ数、温度[K]、圧力[bar]です。
  最後の4列は左から順にCO2分子の数、C原子の数、H原子の数、wt.%となっています。


※ Heガスは死容積の測定に使われます。


※ cfgのファイルはgcmcの付いてないものが平衡化処理（構造が安定するまでまつ処理）のもので、gcmcと付いたものが目的のガスを入れていった場合になります。


※ 通常、実験からは過剰吸着量（excess adsorption uptake）が得られます。そのため、実験結果と比較するためには、計算から得られた絶対吸着量（absolute adsorption uptake）から吸着材が無いときのガスの量を引いて過剰吸着量で比較する必要があります。下に過剰吸着量の計算例を示しています。


※ 実験値よりもガスが吸着している場合は、計算に用いているポテンシャルがレナードジョーンズ（lj）ポテンシャルだけではないため、化学吸着の効果が出ている可能性があります。ガス-ガス間はljポテンシャルのみになっています。


※ ファイルの中を見ていただければ、他のガスでも同様の計算は可能です。ただし、このファイルでの計算では、CO2などの分子は一つの球に近似したパラメータを用いての計算になります（計算しているコードはlammpsではありませんが、論文でもこのようにして計算されている例が多くあります）。きちんと分子として扱いたい場合は、左欄の「Lammps (GCMC, Mg(OH)2)」などを参考にしてください。


※ 入力ファイルで指定している温度、圧力にすることは難しいため出力ファイル（log.lammps）で収束した値で検討してください。


※ replicate 1 1 1 の値を変えるとその数値の分だけ単位胞の構造が並びます。


※ ガスが充填していくと、lammpsの数値計算上、ガスの増減で温度も変動します。in.lmpでの tfac_insert の後の数値を変えたり、"variable   temp2 index"の後の値を変えるなどしてみてください。tfac_insertの後の値を変えることが正しいはずですが、この入力例の場合はほとんど機能しませんでした。temp1は加圧時（NPTでの制御）の目標とする温度です。


※ 圧力の制御が非常に難しいです。そのため前回の構造と原子の速度を用いて条件変えて再計算が可能なファイルも添付しています。lammpsの計算的にはガスの供給側の圧力はin.lmpやin.lmp_restartの"variable   pres index 1.0"で指定した値となっているはずですが、全体の圧力は非常に乱高下しています。時間がある場合は何度もrun_restart.batを繰り返してみてください。


※ この例ではmuの値にMOPACの計算で得られたフェルミ準位近傍のエネルギーを用いていますが、マニュアル（ https://lammps.sandia.gov/doc/fix_gcmc.html ）にある式μid=kT*ln（ΦPλ^3/kT）で計算した値を入力することが正しいと思われます。ですが、この入力例のようにgcmcの部分で圧力（pressure）を指定している場合はmuの値が無視されるとlammpsのマニュアルに書かれています。


※ 一連のGCMCの入力ファイルの設定については、これが最適というわけではありません。そのため、さらに良い入力ファイルとなるように勉強を進めてください。よろしくお願い致します。


※ seqと付いたファイルは指定した温度で一連の圧力を計算します。動かすにはrun.batの温度と圧力の数字を書き換えて（圧力は削除も追加も可能です）run.batをクリックするだけです。replaceが2 2 2になっているのでご注意ください。run_seq_tps.batは内部で指定している温度と圧力と時間で計算してくれます。


※ 過剰吸着量を計算するためのExcelシートの例を入れておきました。ZTCでの例は[ZTC_H2_and_He_example.xlsx]、一般的なテンプレートの例は[CxHy_H2_and_He_template.xlsx]となります。参考になれば幸いです。記載されている温度では吸着材の無い場合のH2とHeが計算されています。吸着材のある場合でのH2とHeを計算すればよいようになっています。

--------------------------------------------------
■ 過剰吸着量の計算のためのガスのみのGCMC計算


□ tutorial_7_gcmc_He_only
  100^3 [Angstrom^3]の空間にHeガスを充填した場合のシミュレーション
  最後に出力されるデータ（log.lammpsにも同様です）
  最初の3列はステップ数、温度[K]、圧力[bar]です。
  最後の4列は左から順にHe原子の数、温度となっています。
  ※ この入力例では約90/100^3 [He原子の数/Angstrom^3]の値になりました。


□ tutorial_7_gcmc_N2_only
  120^3 [Angstrom^3]の空間にHeガスを充填した場合のシミュレーション
  最後に出力されるデータ（log.lammpsにも同様です）
  最初の3列はステップ数、温度[K]、圧力[bar]です。
  最後の4列は左から順にN2分子の数、温度となっています。
  ※ この入力例では約180/120^3 [N2分子の数/Angstrom^3] = 約360/120^3 [N原子の数/Angstrom^3]の値になりました。


□ tutorial_7_gcmc_H2_only
  110^3 [Angstrom^3]の空間にHeガスを充填した場合のシミュレーション
  最後に出力されるデータ（log.lammpsにも同様です）
  最初の3列はステップ数、温度[K]、圧力[bar]です。
  最後の4列は左から順にH2分子の数、温度となっています。
  ※ この入力例では約120/110^3 [H2分子の数/Angstrom^3] = 約240/120^3 [H原子の数/Angstrom^3]の値になりました。


□ 過剰吸着量の計算例
  上の例で示したZTCでのHe原子の絶対吸着量はHe原子で約22個となっていたので、22/90*100^3 = 244444.444 [Angstrom^3]の体積となります。差し引くH2分子は"tutorial_7_gcmc_H2_only"の例から120/110^3*244444.444=22.039となります。絶対吸着量の計算ではH2分子は約75個でしたから、過剰吸着量でのH2分子は55-22=33個となります。今回のZTCの例ですと、過剰吸着量は33*2/(288*12+72+33*2)*100=1.83 wt%と計算できます。絶対吸着量は55*2/(288*12+72+55*2)*100=3.02 wt%となります。論文では、Peng-Robinson方程式から得られるHeのバルク気相のモル密度と第2ビリアル係数から得られる細孔容積を掛け（モル密度*細孔容積）たものを絶対吸着量から差し引いた値を過剰吸着量とする（ https://people.bath.ac.uk/td222/research/excess/index.html ）方法が採用されたりします（その方法の方がエレガントな求め方であるとは思っています）。何故ならば、ここに書いた方法ですと、誤差が大きく（加えて誤差伝搬も多くなる）、圧力を変えた場合に目的の温度に収束するように最低なパラメータを調整しなければならないためです。論文にする場合は論文で書かれている方法にするかまたは今回の方法も含めた両方の結果を示しておくと良いと思います（エラーバーを追加するのも大切です）。文献（https://thesis.library.caltech.edu/7198/59/Stadie_N_2013_Chapter4.pdf）によると、77 Kで0.1 MPaにおけるZTCの過剰吸着量は2.2 wt%となっています。


※ 今回の例では、一般に吸着材と強く相互作用しにくいと考えられるHeガスを用いて細孔容積を求めています。


※ 今回は、空間の大きさと初期に配置する原子数の数を調整して、目的の温度で収束しやすくなるようにしています。マニュアル（ https://lammps.sandia.gov/doc/fix_gcmc.html ）にはin.lmpでのtfac_insert の後の数値を変えるとの記述があります（ https://lammps.sandia.gov/threads/msg64926.html なども参考になる）。


※ 一連のGCMCの入力ファイルの設定については、これが最適というわけではありません。そのため、さらに良い入力ファイルとなるように勉強を進めてください。よろしくお願い致します。


□ 目的の温度や圧力に収束させるための情報
  温度や圧力の条件を変えたときに上手く目的の温度に収束しないことがあります。以下に優先的に値を変えるとよいパラメータを示します。
・variable   temp2 index 77.0 # GCMCとその前処理の段階で設定している温度。吸着するガスから吸着材の熱が取られているのでより大きな値にしたりすることでもできる。
・variable   pres index 1.0 # 0.1 MPa (bar units)
・variable   tfac index 1.0  # 温度が下がる場合は大きな値にする
・variable   fs   index 0.0005 # 1ステップの時間。途中でエラーが出る場合にはより小さな値にする
・variable   ps   index 20 # 各処理（昇圧の計算など）での計算時間。まだ収束しない場合はより大きな値にする
・variable   ps_gcmc index 30 # 各処理（GCMCの計算）での計算時間。まだ収束しない場合はより大きな値にする
・${tdamp} # 温度の収束が上手くいかない場合はこの値を${fs}*100から変える（特にGCMCのところ）
  fsの値は"variable   fs   index 0.0005"で定義している。
・variable   pdamp equal ${fs}*1000 # 圧力の収束が上手くいかない場合はこの値を変える
  複数ある"run ${nstep}"での${nstep}を数値にしてもよい。上の例では${ps}/${fs}=20/0.0005などとなるようにしている。
・fix f3 gas gcmc ${nfreq} ${natom} ${nmove} 3 761341 ${temp2} ${mu} ${disp} pressure ${pres} tfac_insert ${tfac}
  での${nfreq} ${natom} ${nmove}はそれぞれ下に記載の項目の部分で設定しています。
  variable   nfreq index 100
  variable   natom index 10
  variable   nmove index 10
  natomでの数値の部分を変えると挿入されたり削除されたりする原子や分子の更新頻度が変わる。値が小さい方が更新する原子の数が少なくなるので値がふらつくようであれば小さな値にしますが、収束までの時間は長くなります。収束しなかった場合はps_gcmcの値を大きくしてください（詳細はマニュアルを参照ください）


□ MPa(input), number of Gas, (spacing)
下記を計算しなおしたものが H2_and_He.xlsx にあります。
----------
He (77 K)

	0.1 MPa,   約90/100^3 [He原子の数/Angstrom^3], 30.0
	0.2 MPa,  約176/100^3 [He原子の数/Angstrom^3], 24.2
	0.3 MPa,  約250/100^3 [He原子の数/Angstrom^3], 22.0
	0.5 MPa,  約390/100^3 [He原子の数/Angstrom^3], 18.2
	0.7 MPa,  約500/100^3 [He原子の数/Angstrom^3], 16.3
	1.0 MPa,  約660/100^3 [He原子の数/Angstrom^3], 15.0
	3.0 MPa, 約1270/100^3 [He原子の数/Angstrom^3], 11.8
	5.0 MPa, 約1620/100^3 [He原子の数/Angstrom^3], 10.9
	
	10.0 MPa, 約2050/100^3 [He原子の数/Angstrom^3], 10.0
	35.0 MPa, 約2740/100^3 [He原子の数/Angstrom^3],  9.1
	70.0 MPa, 約3115/100^3 [He原子の数/Angstrom^3],  8.6


H2 (77 K)

	0.1 MPa,  約120/110^3 [H2分子の数/Angstrom^3], 29.0
	0.2 MPa,  約250/110^3 [H2分子の数/Angstrom^3], 23.0
	0.3 MPa,  約410/110^3 [H2分子の数/Angstrom^3], 19.8
	0.5 MPa,  約665/110^3 [H2分子の数/Angstrom^3], 16.4
	0.7 MPa,  約900/110^3 [H2分子の数/Angstrom^3], 14.5
	1.0 MPa, 約1340/110^3 [H2分子の数/Angstrom^3], 12.95
	3.0 MPa, 約4410/110^3 [H2分子の数/Angstrom^3],  8.6
	5.0 MPa, 約8140/110^3 [H2分子の数/Angstrom^3],  7.0
----------
He (298 K)

	1.0 MPa,  約240/100^3 [He原子の数/Angstrom^3], 22.0
	5.0 MPa,  約690/100^3 [He原子の数/Angstrom^3], 14.3
	10.0 MPa, 約1200/100^3 [He原子の数/Angstrom^3], 12.1
	15.0 MPa, 約1450/100^3 [He原子の数/Angstrom^3], 11.2
	30.0 MPa, 約1950/100^3 [He原子の数/Angstrom^3], 10.2
	50.0 MPa, 約2280/100^3 [He原子の数/Angstrom^3],  9.8
	70.0 MPa, 約2520/100^3 [He原子の数/Angstrom^3],  9.2


H2 (298 K)

	1.0 MPa,  約320/110^3 [H2分子の数/Angstrom^3], 21.7
	5.0 MPa, 約1525/110^3 [H2分子の数/Angstrom^3], 12.4
	10.0 MPa, 約3000/110^3 [H2分子の数/Angstrom^3],  9.8
	15.0 MPa, 約4200/110^3 [H2分子の数/Angstrom^3],  8.6
	30.0 MPa, 約7350/110^3 [H2分子の数/Angstrom^3],  7.2
	50.0 MPa,約10500/110^3 [H2分子の数/Angstrom^3],  6.5
	70.0 MPa,約12700/110^3 [H2分子の数/Angstrom^3],  6.0
	
----------
Heは原子の個数、H2は分子の個数として記載

	ZTC ( 0.1 MPa,  77 K): He 22個, H2  55個, excess 1.83 wt.%, absolute 3.02 wt.%
	ZTC ( 0.5 MPa,  77 K): He 22個, H2  77個, excess 2.69 wt.%, absolute 4.18 wt.%
	ZTC ( 3.0 MPa,  77 K): He 23個, H2 116個, excess 3.07 wt.%, absolute 6.17 wt.%
	ZTC ( 5.0 MPa,  77 K): He 25個, H2 127個, excess 4.23 wt.%, absolute 6.72 wt.%
	
	ZTC ( 5.0 MPa, 298 K): He  8個, H2  17個, excess 0.21 wt.%, absolute 0.95 wt.%
	ZTC (15.0 MPa, 298 K): He 12個, H2  35個, excess 0.50 wt.%, absolute 1.95 wt.%
	ZTC (30.0 MPa, 298 K): He 15個, H2  50個, excess 0.42 wt.%, absolute 2.77 wt.%
	ZTC (50.0 MPa, 298 K): He 17個, H2  65個, excess 0.35 wt.%, absolute 3.55 wt.%
	ZTC (70.0 MPa, 298 K): He 18個, H2  75個, excess 0.38 wt.%, absolute 4.10 wt.%
	
--------------------------------------------------
■ 分子を一つの球と近似しない場合


□ tutorial_7_gcmc_CO2_v2
  使い方はこれまでと同様です。


□ tutorial_7_gcmc_H2O_v2
  使い方はこれまでと同様です。


□ tutorial_7_gcmc_N2_v2
  使い方はこれまでと同様です。


□ tutorial_7_gcmc_H2_v2
  使い方はこれまでと同様です。


※ あくまでも現在の私の実力で作成するならばという条件での参考例です。パラメータも最適化していません。これが最適というわけではありませんので、より良い入力ファイルとなるようにパラメータを調節したりして勉強を進めてください。よろしくお願い致します。

------------------------------------------------------------------------------
■ COMB (Charge-Optimized Many-Body) potential


□ tutorial_8_comb3


□ tutorial_8_comb3_gcmc_He


□ tutorial_8_comb3_gcmc_He_cho


※ 色々と試してみましたが、いまの私の実力（2019年時）では、reaxffとljのポテンシャルを混合で用いたgcmcの入力ファイルを作ることができませんでした。そのため、C-H-O用のためにCOMBポテンシャルを用いた入力ファイルの例を作成してみました。

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


## hybrid (https://docs.lammps.org/pair_tersoff.html)
```
pair_style  hybrid/overlay rebo tersoff shift -0.00407 ilp/graphene/hbn 16.0 coul/shield 16.0
pair_coeff  * * rebo              CH.rebo     NULL NULL C
pair_coeff  * * tersoff           BNC.tersoff B    N    NULL
pair_coeff  * * ilp/graphene/hbn  BNCH.ILP    B    N    C
pair_coeff  1 1 coul/shield 0.70
pair_coeff  1 2 coul/shield 0.695
pair_coeff  2 2 coul/shield 0.69
```
- (Mandelli_1) D. Mandelli, W. Ouyang, M. Urbakh, and O. Hod, ACS Nano 13(7), 7603-7609 (2019).
- (Ouyang_1) W. Ouyang et al., J. Chem. Theory Comput. 16(1), 666-676 (2020).

## Activation energy (TS - Reactant)
- About 10 kcal/mol: Reacts at room temperature
- About 20 kcal/mol: takes a very long time at room temperature
- About 25 kcal/mol: Reacts when heated in an oil bath
- Over 30 kcal/mol: Rarely occurs


## Linux version (Ubuntu 22.04 LTS)
- see Installation_lammps_linux.txt
- use "csh" script for run.


## Acknowledgment ######################################
- This project (modified version) is/was partially supported by the following :
  + ATSUMITEC Co., Ltd.

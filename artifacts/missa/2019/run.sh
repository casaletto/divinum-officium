
exe=../../../web/cgi-bin/missa/missa.pl

do_missa() {
	local day=$1
	local month=$2
	local year=$3
	local missanumber=$4

	local date=${month}"-"${day}"-"${year}
	local date2=${year}${month}${day}
    echo ${month} ${date2} ${missanumber}	

	mkdir -p ${month}
	
	perl ${exe} "date=${date}&missa=1&missanumber=${missanumber}&rubrics=1&first=1&solemn=0" > ./${month}/${date2}.${missanumber}.lo.html
	perl ${exe} "date=${date}&missa=1&missanumber=${missanumber}&rubrics=1&first=1&solemn=1" > ./${month}/${date2}.${missanumber}.hi.html
}

# jan
year=2019
month=01
days=31
for day in $( seq -f "%02g" 1 ${days} )
do
	do_missa ${day} ${month} ${year} 1
done

# feb
month=02
days=28
for day in $( seq -f "%02g" 1 ${days} )
do
	do_missa ${day} ${month} ${year} 1
done

# mar
month=03
days=31
for day in $( seq -f "%02g" 1 ${days} )
do
	do_missa ${day} ${month} ${year} 1
done

# apr
month=04
days=30
for day in $( seq -f "%02g" 1 ${days} )
do
	do_missa ${day} ${month} ${year} 1
done

# may
month=05
days=31
for day in $( seq -f "%02g" 1 ${days} )
do
	do_missa ${day} ${month} ${year} 1
done

# jun
month=06
days=30
for day in $( seq -f "%02g" 1 ${days} )
do
	do_missa ${day} ${month} ${year} 1
done

# jul
month=07
days=31
for day in $( seq -f "%02g" 1 ${days} )
do
	do_missa ${day} ${month} ${year} 1
done

# aug
month=08
days=31
for day in $( seq -f "%02g" 1 ${days} )
do
	do_missa ${day} ${month} ${year} 1
done

# sep
month=09
days=30
for day in $( seq -f "%02g" 1 ${days} )
do
	do_missa ${day} ${month} ${year} 1
done

# oct
month=10
days=31
for day in $( seq -f "%02g" 1 ${days} )
do
	do_missa ${day} ${month} ${year} 1
done

# nov
month=11
days=30
for day in $( seq -f "%02g" 1 ${days} )
do
	do_missa ${day} ${month} ${year} 1
done

# dec
month=12
days=31
for day in $( seq -f "%02g" 1 ${days} )
do
	do_missa ${day} ${month} ${year} 1
done

# christmas day has 3 masses
do_missa 25 12 ${year} 2
do_missa 25 12 ${year} 3

# all souls day has 3 masses
do_missa 02 11 ${year} 2
do_missa 02 11 ${year} 3


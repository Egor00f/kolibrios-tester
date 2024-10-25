

mkdir tests

touch tests/tests.list

for i in $@
do
	cp $i tests

	$i >> tests/tests.list
done

mkisofs -o ./disk.iso ./tests


qemu-syste-i386 -m 128 -cdrom kolibri.iso -boot d -drive file=disk.iso,format=raw,media=cdrom  -rtc base=localtime -vga vmware -net nic,model=i82551 -name kolibrios

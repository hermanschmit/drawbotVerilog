if { $::argc > 0 } {
    set i 1
    foreach arg $::argv {
        puts "File is $arg"
	set fn $arg
        incr i
    }
} else {
    error "no command line argument passed"
}

set nm [lindex [get_service_paths master] 0]
open_service master $nm
set image_address [master_read_32 $nm 0x20041090 0x1]
puts $image_address

#master_read_32 $nm $image_address 0x20
#master_read_to_file $nm readFile $image_address 0x10000
# maybe we should make sure it is NAN before writing

master_write_from_file $nm $fn $image_address

close_service master $nm


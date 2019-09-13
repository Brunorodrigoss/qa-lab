begin
    # Try to do somenthing
    file  = File.open('./hello.txt')
    if file
        puts file.read
    end
rescue Exception => e
    # Try to get a possible error
    puts e.message
    puts e.backtrace
end

def soma(n1, n2)
    n1 + n2
rescue Exception => e
    puts e.message
    puts e.backtrace
end



soma('2', 3)
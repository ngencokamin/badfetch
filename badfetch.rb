# So here I decided to initialize a hash to store all the system info
# I considered doing it a handful of other ways, but settled on this at the end
# The next choice was between using strings or symbols as keys
# I went with symbols because it seemed like more the vibe
# Sidenote, I haven't worked with ruby in a minute and completely
# forgot for a second that they are called hashes! I instinctively
# called them dictionaries for a second
# Silly me!
sysinfo = {
  # user
  user: '',
  # hostname
  hostname: '',
  # os (i use endeavour os btw)
  # I've considered starting to use Nix
  # But I don't know that I have time for the learning curve
  # And just general time to get set up
  os: '',
  # kernel. I use the g14 kernel
  # I was using endeavour, but rog-control-center didn't work
  # so I switched to g14
  # It's funny, my laptop is a strix g16, not a g14!
  # But that's just what the kernel is called
  kernel: '',
  # uptime
  uptime: '',
  # packages (only works on Debian-based systems)
  # I use Arch btw
  # So I don't know if this works
  # Oh well, ship it baybee
  packages: '',
  # shell
  shell: '',
  # resolution
  # TODO
  # display an error if resolution is less than 1440p
  # That's just not enough these days, yk?
  resolution: '',
  #  de
  # It could also say WM
  # I use a WM, but it says DE!
  # hyprland btw
  de: '',
  # theme
  # Only works with gnome installed
  #  You don't have to be using gnome, but you do need it installed
  # Just install it tho it's fine
  theme: '',
  # icon theme
  # Only works with gnome installed
  #  You don't have to be using gnome, but you do need it installed
  # Just install it tho it's fine
  icons: '',
  # terminal
  # Should this say terminal emulator?
  # Is it emulated because it's not a tty?
  # Really makes you think
  terminal: '',
  # cpu
  cpu: '',
  # gpus
  # This doesn't display friendly name
  # It just displays the output of lspci
  # That's probably fine
  gpus: [],
  # memory
  memory: ''
}

# Array of ads and sponsors
# It was hard picking the right ones
# But I think I've found a good and
# reputable bunch
ads = [
  'RAID: Shadow Legends™ is an immersive free-to-play mobile game. Try it now!.',
  'If you like my work, support me on buymeacoffee.com/ngencokamin',
  'Install NordVPN. Now. Only Nord can keep you safe.',
  'Get 10% off your next Soylent if you drink two at once!',
  'Use code BADFETCH at checkout for 0% off your next purchase!',
  'Try Manscaped™: because your terminal deserves smooth output.',
  "Today\'s sponsor: regret. Also, Squarespace.",
  "HelloFresh: For when you\'re too busy to install Arch again.",
  'Brought to you by Audible. Listen to your kernel panic.',
  "Established Titles says I\'m a lord. What are you, loser?"
]

# Function to select a random ad
def random_ad(all_ads)
  all_ads.sample
end

# So it was hard deciding what to use as the criteria of my loop!
# If I used length == 0 or .empty?, it would break when one of them was set to an int!
# Well, c'est la life
while sysinfo.values.any? { |key| key == '' }
  # If the user doesn't exist
  if sysinfo[:user].length == 0
    # Output message (very helpful)
    puts 'Getting user...'
    # Sleep 1
    sleep 1
    # What, you want me to remove the sponsor spots?
    # Girl's gotta eat
    # Smh my head
    system('figlet "' + random_ad(ads) + '" | lolcat')
    # Sleep number six
    sleep 1
    # 7th sleep
    sleep 1
    # What, you want me to remove the sponsor spots?
    # Girl's gotta eat
    # Smh my head
    system('figlet "' + random_ad(ads) + '" | lolcat')
    # 8 now, almost there
    sleep 1
    sysinfo[:user] = `echo $USER`.chomp
  elsif sysinfo[:hostname].length == 0
    puts 'Getting hostname...'
    # Sleep 1
    sleep 1
    # What, you want me to remove the sponsor spots?
    # Girl's gotta eat
    # Smh my head
    system('figlet "' + random_ad(ads) + '" | lolcat')
    # Sleep number six
    sleep 1
    # 7th sleep
    sleep 1
    # What, you want me to remove the sponsor spots?
    # Girl's gotta eat
    # Smh my head
    system('figlet "' + random_ad(ads) + '" | lolcat')
    # 8 now, almost there
    sleep 1
    sysinfo[:hostname] = `hostname`.chomp
  elsif sysinfo[:kernel].length == 0
    puts 'Getting kernel...'
    # Sleep 1
    sleep 1
    # What, you want me to remove the sponsor spots?
    # Girl's gotta eat
    # Smh my head
    system('figlet "' + random_ad(ads) + '" | lolcat')
    # Sleep number six
    sleep 1
    # 7th sleep
    sleep 1
    # What, you want me to remove the sponsor spots?
    # Girl's gotta eat
    # Smh my head
    system('figlet "' + random_ad(ads) + '" | lolcat')
    # 8 now, almost there
    sleep 1
    sysinfo[:kernel] = `uname -r`.chomp
  elsif sysinfo[:os].length == 0
    puts 'Getting OS...'
    # Sleep 1
    sleep 1
    # What, you want me to remove the sponsor spots?
    # Girl's gotta eat
    # Smh my head
    system('figlet "' + random_ad(ads) + '" | lolcat')
    # Sleep number six
    sleep 1
    # 7th sleep
    sleep 1
    # What, you want me to remove the sponsor spots?
    # Girl's gotta eat
    # Smh my head
    system('figlet "' + random_ad(ads) + '" | lolcat')
    # 8 now, almost there
    sleep 1
    os = `cat /etc/os-release 2>/dev/null`.chomp
    os = os.split("\n")
    os = os[0].gsub('NAME="', '').gsub('"', '')
    sysinfo[:os] = os
  elsif sysinfo[:uptime].length == 0
    puts 'Getting uptime...'
    # Sleep 1
    sleep 1
    # What, you want me to remove the sponsor spots?
    # Girl's gotta eat
    # Smh my head
    system('figlet "' + random_ad(ads) + '" | lolcat')
    # Sleep number six
    sleep 1
    # 7th sleep
    sleep 1
    # What, you want me to remove the sponsor spots?
    # Girl's gotta eat
    # Smh my head
    system('figlet "' + random_ad(ads) + '" | lolcat')
    # 8 now, almost there
    sleep 1
    sysinfo[:uptime] = `uptime -p`.chomp
  elsif sysinfo[:packages].class != Integer
    puts 'Getting packages... (only works on Debian-based systems)'
    # Sleep 1
    sleep 1
    # What, you want me to remove the sponsor spots?
    # Girl's gotta eat
    # Smh my head
    system('figlet "' + random_ad(ads) + '" | lolcat')
    # Sleep number six
    sleep 1
    # 7th sleep
    sleep 1
    # What, you want me to remove the sponsor spots?
    # Girl's gotta eat
    # Smh my head
    system('figlet "' + random_ad(ads) + '" | lolcat')
    # 8 now, almost there
    sleep 1
    sysinfo[:packages] = `dpkg --list | wc -l`.chomp.to_i - 5
  elsif sysinfo[:shell].length == 0
    puts 'Getting shell...'
    # Sleep 1
    sleep 1
    # What, you want me to remove the sponsor spots?
    # Girl's gotta eat
    # Smh my head
    system('figlet "' + random_ad(ads) + '" | lolcat')
    # Sleep number six
    sleep 1
    # 7th sleep
    sleep 1
    # What, you want me to remove the sponsor spots?
    # Girl's gotta eat
    # Smh my head
    system('figlet "' + random_ad(ads) + '" | lolcat')
    # 8 now, almost there
    sleep 1
    sysinfo[:shell] = `echo $SHELL`.chomp.split('/').last
  elsif sysinfo[:resolution].length == 0
    puts 'Getting resolution...'
    # Sleep 1
    sleep 1
    # What, you want me to remove the sponsor spots?
    # Girl's gotta eat
    # Smh my head
    system('figlet "' + random_ad(ads) + '" | lolcat')
    # Sleep number six
    sleep 1
    # 7th sleep
    sleep 1
    # What, you want me to remove the sponsor spots?
    # Girl's gotta eat
    # Smh my head
    system('figlet "' + random_ad(ads) + '" | lolcat')
    # 8 now, almost there
    sleep 1
    sysinfo[:resolution] = `xrandr | grep '*' | awk '{print $1}' | head -n 1`.chomp
  elsif sysinfo[:de].length == 0
    puts 'Getting desktop environment...'
    # Sleep 1
    sleep 1
    # What, you want me to remove the sponsor spots?
    # Girl's gotta eat
    # Smh my head
    system('figlet "' + random_ad(ads) + '" | lolcat')
    # Sleep number six
    sleep 1
    # 7th sleep
    sleep 1
    # What, you want me to remove the sponsor spots?
    # Girl's gotta eat
    # Smh my head
    system('figlet "' + random_ad(ads) + '" | lolcat')
    # 8 now, almost there
    sleep 1
    de = `echo $XDG_CURRENT_DESKTOP`.chomp
    sysinfo[:de] = de.empty? ? 'Unknown' : de
  elsif sysinfo[:theme].length == 0
    puts 'Getting theme... (Install gnome if this doesn\'t work)'
    # Sleep 1
    sleep 1
    # What, you want me to remove the sponsor spots?
    # Girl's gotta eat
    # Smh my head
    system('figlet "' + random_ad(ads) + '" | lolcat')
    # Sleep number six
    sleep 1
    # 7th sleep
    sleep 1
    # What, you want me to remove the sponsor spots?
    # Girl's gotta eat
    # Smh my head
    system('figlet "' + random_ad(ads) + '" | lolcat')
    # 8 now, almost there
    sleep 1
    theme = `gsettings get org.gnome.desktop.interface gtk-theme`.chomp.gsub("'", '')
    sysinfo[:theme] = theme.empty? ? 'Unknown' : theme
  elsif sysinfo[:icons].length == 0
    puts 'Getting icon theme...(Install gnome if this doesn\'t work)'
    # Sleep 1
    sleep 1
    # What, you want me to remove the sponsor spots?
    # Girl's gotta eat
    # Smh my head
    system('figlet "' + random_ad(ads) + '" | lolcat')
    # Sleep number six
    sleep 1
    # 7th sleep
    sleep 1
    # What, you want me to remove the sponsor spots?
    # Girl's gotta eat
    # Smh my head
    system('figlet "' + random_ad(ads) + '" | lolcat')
    # 8 now, almost there
    sleep 1
    icons = `gsettings get org.gnome.desktop.interface icon-theme`.chomp.gsub("'", '')
    sysinfo[:icons] = icons.empty? ? 'Unknown' : icons
  elsif sysinfo[:terminal].length == 0
    puts 'Getting terminal...'
    # Sleep 1
    sleep 1
    # What, you want me to remove the sponsor spots?
    # Girl's gotta eat
    # Smh my head
    system('figlet "' + random_ad(ads) + '" | lolcat')
    # Sleep number six
    sleep 1
    # 7th sleep
    sleep 1
    # What, you want me to remove the sponsor spots?
    # Girl's gotta eat
    # Smh my head
    system('figlet "' + random_ad(ads) + '" | lolcat')
    # 8 now, almost there
    sleep 1
    terminal = `echo $TERM`.chomp
    sysinfo[:terminal] = terminal.empty? ? 'Unknown' : terminal
  elsif sysinfo[:cpu].length == 0
    puts 'Getting CPU info...'
    # Sleep 1
    sleep 1
    # What, you want me to remove the sponsor spots?
    # Girl's gotta eat
    # Smh my head
    system('figlet "' + random_ad(ads) + '" | lolcat')
    # Sleep number six
    sleep 1
    # 7th sleep
    sleep 1
    # What, you want me to remove the sponsor spots?
    # Girl's gotta eat
    # Smh my head
    system('figlet "' + random_ad(ads) + '" | lolcat')
    # 8 now, almost there
    sleep 1
    cpu = `lscpu | grep "Model name" | awk -F ':' '{print $2}'`.chomp.strip
    sysinfo[:cpu] = cpu.empty? ? 'Unknown' : cpu
  elsif sysinfo[:gpus].empty?
    puts 'Getting GPU info...'
    # Sleep 1
    sleep 1
    # What, you want me to remove the sponsor spots?
    # Girl's gotta eat
    # Smh my head
    system('figlet "' + random_ad(ads) + '" | lolcat')
    # Sleep number six
    sleep 1
    # 7th sleep
    sleep 1
    # What, you want me to remove the sponsor spots?
    # Girl's gotta eat
    # Smh my head
    system('figlet "' + random_ad(ads) + '" | lolcat')
    # 8 now, almost there
    sleep 1
    gpus = `lspci | grep -i vga | awk -F ':' '{print $3}'`.split("\n").map(&:strip)
    sysinfo[:gpus] = gpus.empty? ? ['Unknown'] : gpus
  elsif sysinfo[:memory].length == 0
    puts 'Getting memory info...'
    # Sleep 1
    sleep 1
    # What, you want me to remove the sponsor spots?
    # Girl's gotta eat
    # Smh my head
    system('figlet "' + random_ad(ads) + '" | lolcat')
    # Sleep number six
    sleep 1
    # 7th sleep
    sleep 1
    # What, you want me to remove the sponsor spots?
    # Girl's gotta eat
    # Smh my head
    system('figlet "' + random_ad(ads) + '" | lolcat')
    # 8 now, almost there
    sleep 1
    mem = `free -h | grep Mem | awk '{print $2}'`.chomp
    sysinfo[:memory] = mem.empty? ? 'Unknown' : mem
  end
end

# Best way I could think to store this ascii art
# Split to save space and make formatting nicer
ascii_art = [' ', ' ', ' ', ' ', ' ', ' ', ' ', '_', '.', '.', '.', '_', "\n", ' ', ' ', ' ', ' ', '.', "'", ' ', ' ', ' ', ' ', ' ', "'", '.',
             "\n", ' ', ' ', ' ', ' ', '/', ' ', ' ', '_', ' ', ' ', ' ', '_', ' ', ' ', '\\', "\n", ' ', ' ', ' ', ' ', '|', ' ', '(', 'o', ')', '_', '(', 'o', ')', ' ', '|', "\n", ' ', ' ', ' ', ' ', ' ', '\\', '(', ' ', ' ', ' ', ' ', ')', ' ', '/', "\n", ' ', ' ', ' ', ' ', ' ', '/', '/', "'", '.', '_', '.', "'", '\\', ' ', '\\', "\n", ' ', ' ', ' ', ' ', '/', '/', ' ', ' ', ' ', '.', ' ', ' ', ' ', '\\', ' ', '\\', "\n", ' ', ' ', ' ', '|', '|', ' ', ' ', ' ', '.', ' ', ' ', ' ', ' ', ' ', '\\', ' ', '\\', "\n", ' ', ' ', ' ', '|', '\\', ' ', ' ', ':', ' ', ' ', ' ', ' ', '/', ' ', '|', "\n", ' ', ' ', ' ', '\\', ' ', '`', ')', ' ', "'", ' ', ' ', '(', '`', ' ', '/', '_', "\n", '_', ')', '`', '`', '"', '.', '_', '_', '_', ',', '.', '"', '`', ' ', '(', '_', "\n", ' ', ' ', ' ', ' ', ' ', ')', ' ', ' ', ' ', ' ', ')', "'", '-', '-', "'", '(', ' ', ' ', ' ', ' ', '(', "\n", ' ', ' ', ' ', ' ', ' ', "'", '-', '-', '-', '`', ' ', ' ', ' ', ' ', ' ', ' ', '`', '-', '-', '-', '`', "\n"]

ascii_art_length = ascii_art.length
assembled = ''

puts 'Assemvling ascii art'

sleep 1
sleep 1
sleep 1
sleep 1
sleep 1

# uhhhh
ascii_art.each_with_index do |char, index|
  assembled += char
  print assembled
  puts "#{index}/#{ascii_art_length} characters assembled"
  sleep 0.1
end

# yueah
print assembled
puts "\n"

# Print the ingfo time!
# There's a lot of info
# But we are printing it anyways!
# Loop for efficiency! Though it might be faster
# to hardcode each value???
# TODO
# discovery period
sysinfo.each do |key, value|
  if key != :gpus
    puts "#{key.to_s.capitalize}: #{value}"
  else
    value.each_with_index do |gpu, index|
      puts "GPU #{index + 1}: #{gpu}"
    end
  end
  sleep 0.5
end

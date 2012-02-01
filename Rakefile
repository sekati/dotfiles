require 'rake'

desc "Hook our dotfiles into system-standard positions."
task :install => :submodules do
  # this has all the linkables from this directory.
  linkables = []
  linkables += Dir.glob('{gitconfig,gitignore,gituser}') if want_to_install?('git')
  linkables += Dir.glob('{vim,vimrc}') if want_to_install?('vim')
  linkables += Dir.glob('{bash,bashrc,profile}') if want_to_install?('bash')
  linkables += Dir.glob('screenrc') if want_to_install?('screen')
  linkables += Dir.glob('gemrc') if want_to_install?('ruby')  

  skip_all = false
  overwrite_all = false
  backup_all = false

  linkables.each do |linkable|
    file = linkable.split('/').last
    source = "#{ENV["PWD"]}/#{linkable}"
    target = "#{ENV["HOME"]}/.#{file}"

    puts "--------"
    puts "file:   #{file}"
    puts "source: #{source}"
    puts "target: #{target}"

    if File.exists?(target) || File.symlink?(target)
      unless skip_all || overwrite_all || backup_all
        puts "File already exists: #{target}, what do you want to do? [s]kip, [S]kip all, [o]verwrite, [O]verwrite all, [b]ackup, [B]ackup all"
        case STDIN.gets.chomp
        when 'o' then overwrite = true
        when 'b' then backup = true
        when 'O' then overwrite_all = true
        when 'B' then backup_all = true
        when 'S' then skip_all = true
        end
      end
      FileUtils.rm_rf(target) if overwrite || overwrite_all
      `mv "$HOME/.#{file}" "$HOME/.#{file}.backup"` if backup || backup_all
    end
    `ln -s "#{source}" "#{target}"`
  end
  success_msg("installed")
end

desc "Init and update submodules."
task :submodules do
  sh('git submodule update --init')
end

task :default => 'install'


private

def want_to_install? (section)
  puts "Would you like to install configuration files for: #{section}? [y]es, [n]o"
  STDIN.gets.chomp == 'y'
end

def success_msg(action)
  puts ''                                                                             
  puts '                             ,,                    ,...,,    ,,                   '
  puts '        `7MM               `7MM           mm     .d\' ""db  `7MM                   '
  puts '          MM                 MM           MM     dM`         MM                   '
  puts ' ,pP"Ybd  MM  ,MP\'      ,M""bMM  ,pW"Wq.mmMMmm  mMMmm`7MM    MM  .gP"Ya  ,pP"Ybd  '
  puts ' 8I   `"  MM ;Y       ,AP    MM 6W\'   `Wb MM     MM    MM    MM ,M\'   Yb 8I   `"  '
  puts ' `YMMMa.  MM;Mm       8MI    MM 8M     M8 MM     MM    MM    MM 8M"""""" `YMMMa.  '
  puts ' L.   I8  MM `Mb.     `Mb    MM YA.   ,A9 MM     MM    MM    MM YM.    , L.   I8  '
  puts ' M9mmmP\'.JMML. YA.     `Wbmd"MML.`Ybmd9\'  `Mbmo.JMML..JMML..JMML.`Mbmmd\' M9mmmP\'  '
  puts""                                                                                
  puts "Sekati Dotfiles have been #{action}. Please restart your terminal and vim."
end
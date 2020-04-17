MRuby::Gem::Specification.new('mruby-joules-app') do |spec|
  spec.license = 'Proprietary'
  spec.author  = 'Jeremy Williams'

  # Add compile flags
  # spec.cc.flags << '-g'

  spec.add_dependency('mruby-web-framework')

  # Add cflags to all
  # spec.mruby.cc.flags << '-g'

  # Add libraries
  # spec.linker.libraries << 'external_lib'

  # Default build files
  spec.rbfiles = Dir.glob("#{dir}/app/**/*.rb") + Dir.glob("#{dir}/app/*.rb")
  # spec.objs = Dir.glob("#{dir}/src/*.{c,cpp,m,asm,S}").map { |f| objfile(f.relative_path_from(dir).pathmap("#{build_dir}/%X")) }
  # spec.test_rbfiles = Dir.glob("#{dir}/test/*.rb")
  # spec.test_objs = Dir.glob("#{dir}/test/*.{c,cpp,m,asm,S}").map { |f| objfile(f.relative_path_from(dir).pathmap("#{build_dir}/%X")) }
  # spec.test_preload = 'test/assert.rb'

  # Values accessible as TEST_ARGS inside test scripts
  # spec.test_args = {'tmp_dir' => Dir::tmpdir}
end

Pod::Spec.new do |spec|
  spec.name = "Password Masking"
  spec.version = "1.0.0"
  spec.summary = "Framework for masking password during presentations."
  spec.homepage = "https://github.com/w31ha0/PasswordMasking"
  spec.license = { type: 'MIT', file: 'LICENSE' }
  spec.authors = { "LEW WEI HAO" => 'lewweihao93@hotmail.com' }
  spec.social_media_url = ""

  spec.platform = :ios, "9.1"
  spec.requires_arc = true
  spec.source = { git: "https://github.com/w31ha0/PasswordMasking.git", tag: "v#{spec.version}", submodules: true }
  spec.source_files = "RGB/**/*.{h,swift}"

  spec.dependency "Curry", "~> 1.4.0"
end

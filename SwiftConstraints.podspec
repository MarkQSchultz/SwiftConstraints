Pod::Spec.new do |s|
  s.name             = "SwiftConstraints"
  s.version          = File.read('VERSION')
  s.summary          = "A simple framework for constructing AutoLayout constraints in Swift"
  s.homepage         = "https://github.com/MarkQSchultz/SwiftConstraints"
  s.license          = 'MIT'
  s.author           = { "Mark Schultz" => "mark@qzerolabs.com" }
  s.source           = { :git => "https://github.com/MarkQSchultz/SwiftConstraints.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/MarkQSchultz'
  s.requires_arc	 = true
  s.source_files	 = 'SwiftConstraints/*.{h,swift}'
end

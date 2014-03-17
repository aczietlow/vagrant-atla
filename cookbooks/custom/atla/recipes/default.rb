git "/var/www/atla" do
 repository "git@github.com:palantirnet/atla.git"
 revision "develop"
 action :sync
 user "vagrant"
end
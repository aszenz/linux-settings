function update-sys
  nix-channel --update && nix-env -u && sudo apt update && sudo apt upgrade -y
end

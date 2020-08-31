if ! which av; then
    apt-get update
    apt-get install -y curl sudo git
    curl https://aviary.sh/install | sudo bash
fi

av recover || echo "..."

# succeeds
av --inventory ./inventory apply --log-level debug

# fails
av --inventory ./inventory apply
if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/IamEasyIce/NataliyaH.git /NataliyaH
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /NataliyaH
fi
cd /NataliyaH
pip3 install -U -r requirements.txt
echo "Starting Nataliya...."
python3 bot.py

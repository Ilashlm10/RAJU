if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Hdhshsjsjsj/ROCKY.git /ROCKY
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /ROCKY
fi
cd /ROCKY
pip3 install -U -r requirements.txt
echo "Starting DQ-The-File-Donor...."
python3 bot.py

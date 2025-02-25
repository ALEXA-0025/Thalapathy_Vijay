if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/MR-KD-PROFESSOR-99/KD-Moviez-Bot /KD-Moviez-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /KD-Moviez-Bot
fi
cd /KD-Moviez-Bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py

#!/bin/bash

# ==============================================================================
# POZIOMY LOKALNE (Main / Local)
# ==============================================================================

# Wprowadzenie do commitów
# Etap 1: Git Commit
git commit
git commit

# Etap 2: Rozgałęzienia w Gicie (Git Branch)
git branch bugFix
git checkout bugFix

# Etap 3: Mergowanie w Gicie (Git Merge)
git branch bugFix
git checkout bugFix
git commit
git checkout main
git commit
git merge bugFix

# Etap 4: Git Rebase
git branch bugFix
git checkout bugFix
git commit
git checkout main
git commit
git checkout bugFix
git rebase main

# Rampa rejsowa (Rozpędzamy się)
# Etap 1: Odczepianie HEAD
git checkout c1

# Etap 2: Relatywne odniesienia (^)
git checkout c4^

# Etap 3: Relatywne odniesienia (~)
git checkout HEAD~1
git branch -f main c6
git branch -f bugFix c0

# Etap 4: Cofanie zmian w Gicie
git reset HEAD~1
git checkout localBranch
git revert HEAD

# Przenoszenie pracy
# Etap 1: Cherry-pick
git cherry-pick c3 c4 c7

# Etap 2: Interaktywny rebase
git rebase -i HEAD~4
# (W interfejsie tutoriala układasz/usuwasz commity według instrukcji)

# Wskazówki i triki
# Etap 1: Przejęcie jednego commitu
git rebase -i HEAD~3
git branch -f main bugFix

# Etap 2: Żonglowanie commitami
git rebase -i HEAD~2
git commit --amend
git rebase -i HEAD~2
git branch -f main caption

# Etap 3: Żonglowanie commitami #2
git cherry-pick c2
git commit --amend
git cherry-pick c3

# Etap 4: Tagi w Gicie
git tag v0 c1
git tag v1 c2
git checkout v1

# Etap 5: Git Describe
git commit

# Zaawansowane tematy
# Etap 1: Rebase ponad wieloma gałęziami
git rebase main bugFix
git rebase bugFix side
git rebase side another
git branch -f main another

# Etap 2: Wiele bazowych gałęzi
git branch bugFix c0
git checkout bugFix
git commit

# Etap 3: Elastyczne odniesienia
git checkout main
git merge bugFix

# ==============================================================================
# POZIOMY ZDALNE (Remote)
# ==============================================================================

# Samouczek zdalny
# Etap 1: Git Clone
git clone

# Etap 2: Zdalne gałęzie
git commit
git checkout o/main
git commit

# Etap 3: Git Fetch
git fetch

# Etap 4: Git Pull
git pull

# Etap 5: Faking Teamwork
git clone
git fakeTeamwork main 2
git commit
git pull

# Etap 6: Git Push
git commit
git commit
git push

# Etap 7: Odzucona praca (Diverged History)
git clone
git fakeTeamwork main 1
git commit
git resync main
git fetch
git rebase o/main
git push

# Do brzegu
# Etap 1: Pushowanie mastera
git fetch
git rebase o/main side
git rebase side another
git rebase another main
git push

# Etap 2: Scalanie ze zdalnym repozytorium
git fetch
git merge o/main side
git merge side another
git merge another main
git push

# Etap 3: Śledzenie zdalnych repozytoriów
git checkout -b side o/main
git commit
git push

# Etap 4: Argumenty Git Push
git push origin main
git push origin foo

# Etap 5: Argumenty Git Push - Rozszerzenie
git push origin foo:main
git push origin main^:foo

# Etap 6: Fetch - Argumenty
git fetch origin foo
git fetch origin bar:foo

# Etap 7: Dziwne źródła (Złote Tarasy)
git push origin :foo
git fetch origin :bar

# Etap 8: Git Pull - Argumenty
git pull origin bar:foo
git pull origin main
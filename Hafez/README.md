

# حافظ‌‌ پژوهی رایانه‌ای
## Mining The Poetry of Hafiz

The aim of this project is to provide a CLI-based text mining tool-chain (Bash, Bicon, GNUPlot, AWK, SED, and UNIX Filters) to study and analysis Huge Persian text files.

You need the Bicon [1] to create a Persian supporting subshell. To verify that Bicon has been installed, first do:
```sh
./init.sh
```
After that, run the script hafez.sh and see the results:
```sh
./hafez.sh
```
Lastly, it runs "gnuplot plot.in" to plots some of the outputs.

![Top 20 words](https://raw.githubusercontent.com/akhorshidi/Kaggle/master/Hafez/Hafez_TOP20.png)
![Top 10 words](https://raw.githubusercontent.com/akhorshidi/Kaggle/master/Hafez/Ghazal_TOP10.png)


This project takes its inspiration from the book **Practical Data Science** [2]. The dataset used for the project was derived from Narges Sharif-Razavian's homepage [3]. The project also hosted on Kaggle [4].

---
[1] https://github.com/behdad/bicon

[2] https://github.com/akhorshidi/Bash4DSBook

[3] http://www.cs.cmu.edu/~nsharifr/hafez.txt

[4] https://www.kaggle.com/akhorshidi/hafez

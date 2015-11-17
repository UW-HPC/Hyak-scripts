    ██╗  ██╗    ██╗   ██╗     █████╗     ██╗  ██╗
    ██║  ██║    ╚██╗ ██╔╝    ██╔══██╗    ██║ ██╔╝
    ███████║     ╚████╔╝     ███████║    █████╔╝ 
    ██╔══██║      ╚██╔╝      ██╔══██║    ██╔═██╗ 
    ██║  ██║       ██║       ██║  ██║    ██║  ██╗
    ╚═╝  ╚═╝       ╚═╝       ╚═╝  ╚═╝    ╚═╝  ╚═╝
                                                
                                                     
# Hyak-scripts
common scripts for managing jobs on Hyak

# run batch job
Here is provided a [PBS script](https://en.wikipedia.org/wiki/Portable_Batch_System) as a generic example to run batch jobs on Hyak.  There are several PBS commands to request the 
number of CPUs, memory, walltime, etc. ... and it is convenient to string all these commands into a single executable BASH script and then you can submit your job to the queuing 
system to run like:

    qsub ./submit-job-Hyak.sh

# run interactive session
Alternatively, you can run an interactive session on Hyak, and this is similar feeling to working at your local computer terminal.  Interactive sessions are useful if you need to: 
run graphical programs or test/bugfix your code to see if it immeditaley crashes or not.  Here are some quick copy/paste commands to start different types of interactive sessions 
(note the similarity to the commands in the PBS script for batch jobs):

    qsub -W group_list=hyak-stf -I -V -l nodes=3:ppn=16,feature=intel

This commands runs on nodes belonging to the "stf" group, starts as interactive (-I) with graphics (-V), and options (-l) to run on 3 nodes with 16 processors-per-node (total 48 CPU-cores).  You 
might wait at the terminal for a little while (unable to type anything) until the queing systems lets you start (now can type things again).

Rather then remember and typing all these commands, it is convenient to just include them in a BASH script with an easier name to remember (see the example scripts 
logon-interactive-*.sh).  It is convenient to keep these scripts in your home folder:

    ~/logon-interactive-*.sh


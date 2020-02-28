############
#
# User customization file for bash
#
############

umask 002

# Prepend user's bin directory to path
PATH=$HOME/bin:$PATH

# Example of path appending
#PATH=$PATH:/my/additional/directory:/another/directory

# Only set these up for interactive shells
# For example, any 'stty' calls should be inside the if/fi
if [ "${PS1:+set}" = set ]; then
	export EDITOR=vi
	export VISUAL=$EDITOR
	export EXINIT="set ai aw sm"
	export FCINIT emacs
	export PAGER=less
	export LESS=-ce
	export MAIL=/usr/spool/mail/$USER
	export MAILCHECK=30
	export MAILFILE=$MAIL
	export PRINTER=lw

	alias	ls='ls -CF'
	alias	ll='ls -lg'
	alias	la='ls -A'
	alias	lla='ls -Alg'
	alias	passwd=yppasswd
	alias	sun='stty dec; stty erase \^H'
	alias	dec='stty dec'
	alias	xtitle='echo -n "]0;\!*"'

	PS1='[\s:\h:\W \!] \$ '
	
	# Broad-provided dotkits
	use R-3.2
	use .matlab-2014b
	use UGER
	use Java-1.7
	use Git-2.0
  use .imagemagick-6.9.2-3 # lol
	use .llvm-clang-3.7.1
	use .mpfr-3.1.4
	#
	# # custom CMap dotkits
	#use CMAP-Python-2.7.10
	
	# # N.B. The "use CMAP-Python-2.7.10" statement must be after the "use .matlab-2014b statement" (vida supra)
	
	# # add to python path 
	#PYTHONPATH=/cmap/users/anup/code/caldaia_root
	#PYTHONPATH=$PYTHONPATH:/cmap/users/anup/code/espresso
	#PYTHONPATH=$PYTHONPATH:/cmap/users/anup/code/pestle
	#PYTHONPATH=$PYTHONPATH:/cmap/users/anup/code/l1ktools/python
	#export PYTHONPATH=$PYTHONPATH:/cmap/users/anup/code/queue_manager
	
	export R_LIBS=/cmap/tools/jenkins/job_libraries/
	
	#put common CMap paths on user's $PATH
	export PATH=$PATH:/cmap/bin:/cmap/tools/sig_tools/bin:/cmap/cogs/bin:/cmap/tools:/cmap/tools/matlib/bin:$JAVA_HOME/bin:/cmap/tools/opt/bin
	
	# use conda to set up production env, or your own custom env
	#source /cmap/tools/miniconda2/bin/activate espresso_prod

	
	# insert contents of SETUP.sh here if desired
         
fi

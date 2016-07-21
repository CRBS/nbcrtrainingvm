[vagrant]: https://www.vagrantup.com/
[virtualbox]: https://www.virtualbox.org/
[nbcrtrain]: https://biobigdata.ucsd.edu/discover/courses/nbcr_summer_training_program_-_data_to_structural_models

# nbcrtrainingvm

This source tree contains a [Vagrant][vagrant] configuration file that can be used to generate a virtual machine with software needed for [NBCR summer training program][nbcrtrain]

### Software requirements

* [Virtual Box][virtualbox]
* [Vagrant][vagrant]
 
This should work on any operating system that supports the above two programs


### Hardware requirements

* XX gigabytes of harddrive

* Minimum **4** gigabytes of ram

* Internet connection

# To start from linux or mac

On a terminal type the following to create the virtual machine
and connect to it via **ssh**:

```Bash
git clone https://github.com/CRBS/nbcrtrainingvm.git
cd nbcrtrainingvm
vagrant up
vagrant ssh -- -X
3dmod # this will launch IMOD, if setup properly a window will be displayed
```
The **vagrant up** can take a while since it will download a base image and install needed packages

NOTE: Instead of running **git** clone above, one can download the source tree and unzip it

### To turn off virtual machine, but not destroy it run:

```Bash
vagrant halt
```

### To destroy virtual machine run:

```Bash
vagrant destroy
```


# To start from Windows

TODO



COPYRIGHT AND LICENCE

Copyright 2016 The Regents of the University of California All Rights Reserved

Permission to copy, modify and distribute any part of this nbcrtrainingvm for educational, research and non-profit purposes, without fee, and without a written agreement is hereby granted, provided that the above copyright notice, this paragraph and the following three paragraphs appear in all copies.

Those desiring to incorporate this nbcrtrainingvm into commercial products or use for commercial purposes should contact the Technology Transfer Office, University of California, San Diego, 9500 Gilman Drive, Mail Code 0910, La Jolla, CA 92093-0910, Ph: (858) 534-5815, FAX: (858) 534-7345, E-MAIL:invent@ucsd.edu.

IN NO EVENT SHALL THE UNIVERSITY OF CALIFORNIA BE LIABLE TO ANY PARTY FOR DIRECT, INDIRECT, SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES, INCLUDING LOST PROFITS, ARISING OUT OF THE USE OF THIS nbcrtrainingvm, EVEN IF THE UNIVERSITY OF CALIFORNIA HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

THE nbcrtrainingvm PROVIDED HEREIN IS ON AN "AS IS" BASIS, AND THE UNIVERSITY OF CALIFORNIA HAS NO OBLIGATION TO PROVIDE MAINTENANCE, SUPPORT, UPDATES, ENHANCEMENTS, OR MODIFICATIONS. THE UNIVERSITY OF CALIFORNIA MAKES NO REPRESENTATIONS AND EXTENDS NO WARRANTIES OF ANY KIND, EITHER IMPLIED OR EXPRESS, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE, OR THAT THE USE OF THE nbcrtrainingvm WILL NOT INFRINGE ANY PATENT, TRADEMARK OR OTHER RIGHTS. 

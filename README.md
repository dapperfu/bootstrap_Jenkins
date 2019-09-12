# bootstrap_Jenkins
Create and Run a local instance of Jenkins on Windows.

Whereas:

- Admin access is locked down on Corporate laptops.
- Jenkins running as a service doesn't work with some apps (especially 'engineering Apps' for Automotive/Aerospace/Heavy Equipment):
  - GreenHills MULTI
  - MATLAB (Prior to R2019a and ``-batch``)
  - dSpace
  - ETAS
  - CANape
- Headless debugging on Windows is a PITA. It's easier to just watch it fail.

It: 

- Downloads latest jenkins.war
- Downloads 'portable' version of Java
- Everything is self contained to the bootstrap directory.
- Integrates well with the other 'bootstrap_' suite of apps.

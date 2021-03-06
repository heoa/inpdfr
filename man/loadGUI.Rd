% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/inpdfr_RGtk2_GUI.R
\name{loadGUI}
\alias{loadGUI}
\title{RGtk2 GUI function: Load the Graphical user Interface}
\usage{
loadGUI()
}
\description{
Load the Graphical user Interface in order to use \code{inpdfr} package through
  a user-friendly interface.
}
\details{
\code{inpdfr} package uses \code{RGtk2} package for its GUI. Non-linux
  users may need to download additional files such as the "gtk-file" icon, or
  the "hicolor" theme, which can be found by downloading GTK+ from http://www.gtk.org/.
  They are not needed for the GUI to work as intended, but you may get a "GTK-WARNING"
  when using \code{loadGUI()}. Feel free to ignore this warning. The RGtk2 GUI is
  not needed to access all funcionalities of \code{inpdfr} package. Some options
  are only available through the command line interface.
}
\examples{
\dontrun{
loadGUI()
}
}


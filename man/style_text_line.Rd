% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/style_text_line.R
\name{style_text_line}
\alias{style_text_line}
\title{Style a row in an Excel sheet based on the text in a cell}
\usage{
style_text_line(
  workbook = workbook,
  sheet = sheet,
  data,
  text,
  text_decoration = NULL,
  wrap_text = FALSE,
  merge_cells = FALSE,
  heights = NULL,
  ...
)
}
\arguments{
\item{workbook}{The workbook object.}

\item{sheet}{The Excel sheet name.}

\item{data}{The data frame that have been exported to the Excel sheet. Used to
find column number and row number for the pretext for which the row should be styled.}

\item{text}{The text in the cell for which the row should be styled.}

\item{text_decoration}{The text decoration style that should be used,
see \code{openxlsx::createStyle}. Defaults to \code{NULL}.}

\item{wrap_text}{Should the text in the cell be wrapped to fit in the column.
Defaults to \code{FALSE}.}

\item{merge_cells}{Should the cells in the row spanning the table be merged?
Defaults to \code{FALSE}.}

\item{heights}{The row height for the formatted row. Defaults to \code{NULL}.}

\item{\dots}{Other arguments to be passed to \code{openxlsx::createStyle}.}
}
\value{
None. One row in the workbook object is styled.
}
\description{
Style the row if at least one cell in the row includes
    the specified text. This can be used to style rows with footnotes,
    explanatory text, summary rows or similar.
}
\details{
The whole line will be styled.

    \code{openxlxs::createStyle} is used for formatting the row. Use
    \code{text_decoration = "bold"} to format the row with bold font.
    Use \code{wrap_text = TRUE} and  \code{merge_cells = TRUE} if you
    want a footnote to span all cells under the table and potentially
    span more lines. If the text spans more than one line, the height
    of the row can be adjusted by setting \code{heights = }.
}
\author{
Petter Hopp Petter.Hopp@vetinst.no
}

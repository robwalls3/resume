# resume

## Goal
Save Resume and automatically convert and upload to Git/elsewhere

## Methods

### Cronjobs & Shell scripts
<ol type="1">
 <li>Cronjob to run a shell script which converts the document to a PDF</li>
 <ol type="a">
  <li>convert.sh -- converts document to PDF</li>
 </ol>
 <li>Cronjob to check for new versions of PDF file and upload to Git/Google Drive/etc.</li> 
 <ol type="a">
   <li>gitFast.sh -- adds all files and performs git push -u $github_user master</li>
 </ol>
</ol>

 

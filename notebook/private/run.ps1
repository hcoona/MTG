$set_name = @('LCI', 'BRO', 'MOM', 'ONE')

$outputDirectory = "$PSScriptRoot/../../out/notebook"

mkdir -Force "$outputDirectory" -ErrorAction Ignore

foreach ($name in $set_name) {
    $input = "notebook/private/17Lands_Any.ipynb"
    $nboutput = "$outputDirectory/17Lands_$name.ipynb"
    papermill -p set_name $name -p local_data 0 $input $nboutput
    jupyter nbconvert --to html $nboutput
}

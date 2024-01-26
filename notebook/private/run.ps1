$set_name = @('LCI', 'BRO')

mkdir notebook/output -ErrorAction Ignore

foreach ($name in $set_name) {
    $input = "notebook/private/17Lands_Any.ipynb"
    $nboutput = "notebook/output/17Lands_$name.ipynb"
    papermill -p set_name $name $input $nboutput
    jupyter nbconvert --to html $nboutput
}

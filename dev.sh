#!/bin/bash

start() {
    project=$1
    project_dir="${2:-$HOME}/${project}"

    if [[ -z $project ]] ; then
        echo "missing 'project name'-argument! See '$0 help'"
        exit 1
    fi

    mkdir -p ${project_dir}
    mkdir -p ${project_dir}/logs
    cp -r html ${project_dir}

    echo "Starting project in directory '${project_dir}'. Stop with 'CTRL-C'."

    PROJECT=${project} PROJECT_DIR=${project_dir} docker-compose up
}

wipe() {
    project=$1

    if [[ -z $project ]] ; then
        echo "missing 'project name'-argument! See '$0 help'"
        exit 1
    fi

    echo "Wiping containers and volumes of project '${project}'"
    docker-compose down > /dev/null 2>&1
    docker volume rm ${project} > /dev/null 2>&1
    docker volume rm ${project}_DB > /dev/null 2>&1
}

help() {
    echo ""
    echo "usage: $0 [command]"
    echo ""
    echo "Available commands:"
    echo "  start [project name] <workspace> - Start a new PHP project or an existing one, with provided project name (no whitespaces or non-english names). Workspace is a absolute path to a directory where the project should be created, users home directory(~) will be used is nothing else is specified."
    echo "  wipe [project name] - Stops project containers and deletes all projects volumes (database will be lost!)."
}

case "$1" in
    start)
        start $2 $3
        ;;
    wipe)
        wipe $2
        ;;
    help)
        help
        ;;
    *)
        help
        ;;
esac
exit 0
# supervisor.jac
node supervisor {
    has name = "code_genius_supervisor";
    has status = "idle";
}

walker orchestrate {
    has input github_url;
    has output docs_path;

    with entry {
        # This is the orchestration walker. For demonstration it just logs and returns.
        print("Supervisor: Received URL -> " + github_url);
        # In a full Jac runtime you'd message repo_mapper, code_analyzer, doc_genie walkers.
        # Here we provide a simple success message to show flow.
        docs_path = "outputs/<repo_name>/docs.md";
        print("Supervisor: Would orchestrate mapping, analysis and docgen now.");
        ret(docs_path);
    }
}

# main.jac
# Minimal Jac server entrypoint showing the available walkers.
# In a working Jac install you can run `jac serve main.jac`
import agents.supervisor;
import agents.repo_mapper;
import agents.code_analyzer;
import agents.doc_genie;

walker serve {
    has github_url: string;
    has docs_path: string;

    with entry {
        print("Main server walker: received URL -> " + github_url);
        # This would invoke the orchestrate walker in a full Jac runtime
        docs_path = orchestrate(github_url);
        ret(docs_path);
    }
}


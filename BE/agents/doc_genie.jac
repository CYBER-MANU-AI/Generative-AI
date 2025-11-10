# doc_genie.jac
node doc_genie {
    has name = "doc_genie";
}

walker generate_docs {
    has input repo_info, analysis_data;
    has output docs_path;

    with entry {
        print("DocGenie: generating docs from repo_info and analysis_data");
        docs_path = "outputs/<repo_name>/docs.md";
        ret(docs_path);
    }
}

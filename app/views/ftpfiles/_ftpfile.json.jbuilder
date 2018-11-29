json.extract! ftpfile, :id, :ftpcr_id, :fname, :dname, :description, :created_at, :updated_at
json.url ftpfile_url(ftpfile, format: :json)

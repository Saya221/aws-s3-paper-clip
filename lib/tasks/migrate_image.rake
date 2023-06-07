namespace :migrate_image do

  # Example with a user only
  task from_paperclip_to_active_storage: :environment do
    user = User.first


    # file.jpeg => change to your real file name
    user.image.copy_to_local_file(:normal, "storage/file.jpeg")
    user.avatar.attach(io: File.open("storage/file.jpeg"), filename: "file.jpeg")
    user.save
  end

  # Scale to multple records and models
  # Delete old file and remove all configurations from paperclip
end

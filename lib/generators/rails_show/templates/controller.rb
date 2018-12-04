class <%= name.capitalize %>Controller < ApplicationController

  # Index takes us the top of the file tree
  def index
    @path = "/"
    open_directory
    render "show"
  end

  # Shows the contents of any directory or file
  def show
    # Periods in the path are swapped out for __ since having periods in your url can cause problems
    @path = params[:id].gsub("__", ".")
    if File.directory? @path
      open_directory
    else
      open_file
    end
  end

  private
    # Takes the elements in a directory and gathers them for display
    # Rejects "." and ".." because those aren't really directories we want users to travel too
    def open_directory
      @items = Dir.entries("#{Dir.pwd}/#{@path}")
        .reject{|f| f == "." || f == ".."}
        .sort
    end

    # Extracts the contents of the file.
    # Checks for denied permissions (in which case it says so)
    # Or if the file is actually a directory. I've found that File.directory? is not always completely accurate, especially for directories with periods or longer names
    def open_file
      begin
        # By appending Dir.pwd, we can limit access to files in the app
        # Oppose to letting users just see any files on the system
        file = File.open("#{Dir.pwd}/#{@path}")
        @contents = file.read
        file.close
      rescue Errno::EACCES
        @contents = "Permission denied"
      rescue Errno::EISDIR
        open_directory
      end
    end
end
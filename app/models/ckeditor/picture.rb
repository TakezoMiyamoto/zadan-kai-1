class Ckeditor::Picture < Ckeditor::Asset
  mount_uploader :data, CkeditorPictureUploader, :mount_on => :data_file_name

  # 画像アップロード時、または選択時にフォームにペーストされるURL
    def url_content
        url(:content)
    end
end

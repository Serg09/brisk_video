json.array!(@packages) do |package|
  json.extract! package, :id, :hours, :first_videographer, :first_videographer_hours, :second_videographer, :second_videographer_hours, :highlight_video, :documentary_edit, :published_dvds, :published_bds, :over_eight_hours, :over_ten_hours
  json.url package_url(package, format: :json)
end

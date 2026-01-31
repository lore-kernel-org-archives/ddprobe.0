Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC1934A3C1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769829834; cv=none; b=LcyaYAIyAYmKMrh00j4gu3BcNE6sbJ6YZ2hgnUe9/uWGHr3YYsriTVyMB7CqYcnM252Y9jVPO2m5BkKlmIkb7wvvmuMNtOiyQQ8i5++ZYQXkB7wi3jyd2k7aOg+IQh6GGN7/bTaTyIpdf8ssScl2E4E7ffyIztUgfh0vIdOF5II=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769829834; c=relaxed/simple;
	bh=UtvfXyP3IUnclb8FyJdElNkYp0RxNSEef5b63yPtGkA=;
	h=To:Subject:From:Message-Id:Date; b=O4pqzOLLCb9gAm/mewyE6pzTGK5Nsh6b9FVsovczpa4SNKGipJedNd3OD9PbNVTwrqeJ/g2oHfx69Y5+i5SGENL8vh1ApiRwWIo/HUO5DrxUuihYviEVC75PF/0aZogj8mSYlQHXxN/+0V0h6YRLZEILh29GfjN4q883j81474g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YfnbmMVG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YfnbmMVG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED50C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769829833;
	bh=UtvfXyP3IUnclb8FyJdElNkYp0RxNSEef5b63yPtGkA=;
	h=To:Subject:From:Date:From;
	b=YfnbmMVGj8KuBo26Afdh2MXhaXDDLk9VU/4dUK5p8BgRdNzFQnHfo+rPL/I8zcuVI
	 xGx6COb2GX7k59I9LjB8xvwoM/aTAdktQCJxwfxQYPcb6Hr8EmDuabobr6vwQqZ2O9
	 dcrhjeO3U1qU0DOhy+o+NbICfxC9shNFrYT9TfuDw7RStBb/80wE2YWVCSQod+Kazs
	 vB37+EXXkoyoBHsSIVwAoRvYps3PsPfE7W5aNt1Z9Y5586e0kUpYG+iolPFZIWzSbW
	 hZMHDuQSl8wHTdBye2r+p9vZ4m4eZSDW62g2wa+xo0VFyxKeuXmp8vl6YN9xf0Djm5
	 r+Cgvx+lXAYSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F255D73EB5
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176982983357.24698.3072324952804011852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a06e3430e24e990a7a7f9463ad3381420b3c7f92861a66b76a6402a9afa39fb5
Date: Sat, 31 Jan 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769829833

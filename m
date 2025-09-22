Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258B52C375A
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758515394; cv=none; b=ISVDDBrdtKA6rgtAwlF9ZaImTac1OzHnAiOHXX4VTehE51qcI4i9AxC2DUJLTTYioP2FjCSi/L5OqMvcjk2sd5PMhoB7yqhy9L9VhzkClnmNH9ig+ydcc2MdRBMQ/w1SdTKLyvywicztw3WOCMAM+AqVGEe0fNCGSCMOL7tRKKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758515394; c=relaxed/simple;
	bh=spWy/2kU8Rer5o05YFRpcNoZK4ANAzi+lRkQ3qejf6k=;
	h=To:Subject:From:Message-Id:Date; b=Xy0GYk246tZLEYygIXX8kgbiNyAFiOUH331kGGLRqrfDhZxaWcaDEuUJQDrRg1iDMOgMT56xYmWGC/XS9+Ta+T3Q729iXcpZRze0La89EP7yXUGdDgwaJVpklF2qwwTGvRV/1sIvevh4PfePhSGf6Eg3lRNsnl5MckYA9n4/Dlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r9NXSAJ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r9NXSAJ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D2BC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758515393;
	bh=spWy/2kU8Rer5o05YFRpcNoZK4ANAzi+lRkQ3qejf6k=;
	h=To:Subject:From:Date:From;
	b=r9NXSAJ3CGQDIYucqeOzMrX+RXag77h4BhmEMVXg0z5shxdO0OixhFKc7YUHoN8J1
	 cscGCToaOJPK0c1gVR9hh6HHLQT5KkwLYvJ7vuA0qKx3OmERN3XH+1azAWHdlYG0vG
	 e49L7076uSoPDfVolbZpHLHIsjuzY3n0Ck7KiuYISOuyVtu6dK3Q6KMZpz1DgI25hy
	 5WS3iGEWxg7z41UoSxFWch7eNnciAr6UXaWGyugcKi0fFRjcFk25oSkf0ynV24UAke
	 T3e+mbZteonXmTgqV9paxNpSENQoZfg9Y8Zk8/2gQYoQBxqyVTVZUUuIAjDfVCZplk
	 AvnTdvYKGC7Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD2FCAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175851539358.21684.8533719477758287974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de232d2151e06864de971a1ea5eeda27dc85debe08f268ad15cb771ab0a3b5be
Date: Mon, 22 Sep 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758515393

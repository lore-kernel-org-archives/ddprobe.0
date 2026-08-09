Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BABA23ABB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786309834; cv=none; b=FLTEYjiCY3cRD66v03SnzEgBYrj6AiEgpibPkkoAR/YWXQv9mVsPQzSJOCz1dc7iCAvX3WQJxso1IvP/9hbbCe2ifJDu5/Ca+FxGr/p6UQVOwtJDIKWUrevJF9IHA0inkmDtvj3NfoQXbXNH3ZGlyMuGo+tEPWTNbkVlli9Uazg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786309834; c=relaxed/simple;
	bh=5I1HQiwiZX5CZ17zT1Zi9LiDQYNVX08L2s3PWReGS9M=;
	h=To:Subject:From:Message-Id:Date; b=YTJ5AZl+m0MEcDk1JR/WehO27lLSuBD0XT+yOQmH4HDK3IY21F4+VrHxSKigFl4OAVns5Fkxb1c/82YmA1J7aP6xCHWILRGm8CeBkAmpYmU6dH6wZX7QWR7lOJvYU1ZnV03kYztdRA/9Od6Phkkx21kSpI7JYZm0+UQId73LhsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k+dsez3S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k+dsez3S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D92DBC2BCF4
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786309833;
	bh=5I1HQiwiZX5CZ17zT1Zi9LiDQYNVX08L2s3PWReGS9M=;
	h=To:Subject:From:Date:From;
	b=k+dsez3Su3wgMxRyhzQhotbLTxNbZl4kCFYx8XEOYo/kmTPqcN3CqspTOUCDxdTxV
	 6LE97d5JRP/19+WLjz8Edvwblwhi3SghSoW0qbGLswx65TDiSmkeIWUpLvJ9VCN/5n
	 4cictOv6HWxdCXnTvOHaXboY1jSrFKnQTUj8ra07QXbkIGW2jfqQy+JiuuyWv08ddO
	 NverUacdx8ycZABoShpbCrFGbTNDTo0S5iU7NfWE4JmvIu4dqCvOnYf6obQTvmPFKu
	 4RRwAoxiZdBwRgsQf7IQthx4xo2qIZLWXgOVmyWA93JdgG3lwbkqlTPaWU2xTSoV2K
	 jgcDoy3BzfVyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B53A9C5AD55
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178630983369.12056.4322024160911356456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b552ddea3ca031c058362644236674919800f7bcb9c7b9a3b934103661766bd
Date: Sun, 09 Aug 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786309833

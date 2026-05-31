Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D83E3947B5
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 18:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780251874; cv=none; b=jh0JGD90xMAYSv4KitBPERKrgkjkVfIesmmHDaX6IMt1lVgb9b8qxBksrmXFTJtmJny+dDSIj/d5RM6p7nrZVw9hyhHSdaP6zgVb038Sf1tFxXzrk8WIxnSt94vwu7qQTgeQe6OOT4J44/v/G48lTM2RhlSLcKz6jZOLsh4Dt7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780251874; c=relaxed/simple;
	bh=xjoKMw8s4zLfM8ETKoBAO8lJRQv2XLFGDzpXdj0UpRo=;
	h=To:Subject:From:Message-Id:Date; b=g49VqsPyGUen0IxzR/5xEXl/QfaY5f2mJZ5N/UeD/KeV+7e2G7XM7WxLTfN6Vxiyvsil1al+x2lrLSydU6FcTxr9sPpNBMumhqu2HvggUiupdIWGzbCYLGhfZGqEk0Y/2Pk5p205BBg8IDhW6izNOy4MMVX3fzGXz4cvSfZmjXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TttY7aB4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TttY7aB4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9B99C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 18:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780251873;
	bh=xjoKMw8s4zLfM8ETKoBAO8lJRQv2XLFGDzpXdj0UpRo=;
	h=To:Subject:From:Date:From;
	b=TttY7aB4usUGWO1c0E406GFRAvOGbebLuG9l1mJYuWC2uogr5OVxraOVTvpAHYjnd
	 5Eevurx0Kffvb8rOVYihzB9FlAdzI9SNvzHNSB4aQ3tDWfUoIYilHyZ7Ho43Vaol/v
	 BK+QZO+pfMaZtt3dfrThLct6LvDW61jwBy+ARLI6Hd874V6uXZE10z7xgF4akAob1R
	 D7R/jn70IiXpkDHRvJn0hUNarL30co9cU2ZppB6WcynbHLDVap3nxcANBv3AziJDZl
	 QG5q+LNmpyWk+1QCtvJcOqw/49ghF0bZqUqEpTwqkWRReKZQ2ZPumWHHQmZ9JpFPKj
	 7Ed9c2j7+2QJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3638CD6E56
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 18:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178025187371.13004.14042660569424312097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b5f33404221cdf94e285bf07befd23c889b8bdb75902c415f7639212752ffc0
Date: Sun, 31 May 2026 18:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780251873

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC287F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 01:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714355543; cv=none; b=HUM6TZ5NMvHYfFvdhQgk1xY/4Cfpo4fKq8GnGGNvvTUfkpQB2+iM0xGhQZ6HmMuuGj8Y9QpfDCHPAsln0kBPcxwvTILhTFpNGdpRNmMBil5fVSHBkzBxJyjq0Jh71Z9u/K9Yu96bvXEzGbYl4Knbw1wKKF66/xlbhNf2NwIvtkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714355543; c=relaxed/simple;
	bh=0g8rO0iGV6Q6K2lF4A6cvh1Bo/bbqKTH7ozwzVOQllE=;
	h=To:Subject:From:Message-Id:Date; b=nB2Vy9NqQAed1d0rHfiEqaVnvxvQpx7RVb3lpPoxayBp9BRVHRFLcDsEbqr4Dxb8ao6qFapGWAeqHbGDRccplsCKkP8G5KTETkVM5TsXpcqIi05hwI0hj7za0E4cEpXH01LekWCwpS/UJJKacAL7BIXilLtxYEiNp/LAAr7MjNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SfV8XXyN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SfV8XXyN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0DF0C113CC
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 01:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714355542;
	bh=0g8rO0iGV6Q6K2lF4A6cvh1Bo/bbqKTH7ozwzVOQllE=;
	h=To:Subject:From:Date:From;
	b=SfV8XXyN1wX7MMnj7ikcFkd81wgCiktD5IviNewGtfMnVK8BN2cs1JXgvBBfpViCw
	 WOrnao2uf5TdRz4CSVg+C6iQWPUNX63HNLhFnypCYfwYXHVks5xr71hm3OuUIOMOFz
	 PLDo6IIKssFTSjQAAkH3afqv78gS/WXgWxp0YemrQfFA+Ws6s9GhiRM6lV8l1SKvVI
	 /4BHiil+ocrhhrxoWvHEmYzOzkFN4ueHAiUWPoJo5M7VNPRUK2x8I+x13eeUdnC9Tq
	 POW8ee6K8U9sVdBGViPK+oOOhz2RYE3HxrUJ+QNelYhlqmifCS2VlhndtrhV9bi8v7
	 d+tJHLUuHeIhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA60C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 01:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171435554275.26810.15630691116539010875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f212cb68beb39459a84a162e70d77e09aaf0a345563d3cd22cb5894566060d79
Date: Mon, 29 Apr 2024 01:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714355542

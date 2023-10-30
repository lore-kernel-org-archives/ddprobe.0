Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3211945B
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kZjHAzHq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92899C433C8
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698689896;
	bh=cgbQIIho15aLvGMRKSNwmby3LE58g7M9xuVVIDMml58=;
	h=To:Subject:From:Date:From;
	b=kZjHAzHqHb3kaMWZNXsn2Lv2vTzdH6rbINBZ/5C2ldZgnEogpOioIycvLuMcuZm/P
	 w51/XGaAW8izBT52dPf8vYi6/MBXmr8E3qrcYJNHBLBhGoe5lISYzZi1OjcGHlBJoK
	 TtAMiX61un/RWVvgsfkze4YWhuItsocjQRX5yHzsqi8HZ6AaNVVP2Wek1goC2VkSXF
	 6gomEVdqxxWfvUhbSDlwq1Q/fToLP9F6aA5KNqEV5/m+yjZXBwtsZ2TG5CyqikzrtB
	 c8PgUuh01PesjzKAp19c0Ll8uhkgr2qVg+n5fE3Cf7SH2E1tgyzzV8vOHU55Z8t0y1
	 o5b6vXmGA3L+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73543C4332F
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169868989644.10098.2822415510331809006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5297da2845cff2f81134fc277e27c289ae9fd38f573dee4f9dff332900b5c50b
Date: Mon, 30 Oct 2023 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698689896

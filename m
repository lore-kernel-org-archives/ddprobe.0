Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62D5D7F
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 04:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A27C433C8
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 04:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693714448;
	bh=Y3wGdsbH9zuENClHeG/eqGu5I7TMBmdwspqut3UNEEk=;
	h=To:Subject:From:Date:From;
	b=ItEURyqmigoa+ZVNBbnpJsks2c3Y6Yxnc1yjq6+zhFif0xdlS7n0KZmfA02b7s0b1
	 tZhEMfODmIfVGuOCZloMV12opx+fSUsGMWdjk1S2sxc8Vpy7MXpshYqXPTD8eERH5+
	 ISOwivhLSLGpBcU8lhMUJo0P72w06mYgnHisRBU19D5c9hlpiQm3A1FLCWLtePaCsu
	 40AyFF4miZhZc+iszbSZxJNb67wwvwBXjL5rMx24LfOUP1ciYllP7+9yFTZx8GxRY2
	 XrlmyJ1f29A0yQZO/io6xt9P/LqBYzH/RMfr3HGWAvVrvWm/CeUpsbsi7vXmq1R2xM
	 FccRtjNBDrrqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF67C83F3E
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 04:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169371444871.23286.11773057420636868182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6b8d71c37948e006e8dacfab934a3468125986f8714165b589503702bb66e30
Date: Sun, 03 Sep 2023 04:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693714448

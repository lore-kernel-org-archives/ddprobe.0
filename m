Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4C51401B
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754234994; cv=none; b=eCCTbMyylki/l+rY2YA0Sg6ESA3xf5cfrnWyQU7CksUBzvVofz8HEpSm81YQXuK001xREzlVzjzL6C2CHOF/LHCkyMxcGS67y96vJvQHyayi6eccF+HyvwFSfq1HOO+ixf7NFHQ0KoTnoC4s4SkyE9md+Y/R3iUPKMuxbDLTLj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754234994; c=relaxed/simple;
	bh=VIalM6+6Fvfzp7s5XU0q1LGbPTP7KdaVlQ5wIqFCtKU=;
	h=To:Subject:From:Message-Id:Date; b=tUdU2KkHo3BblIyMoUGIklMlHImOLGcl2sYMfr69k1dzxbwGcMr9WdF+UDHFpmVxtg5Sr1msWQmGz910cbtQ1OBm1Bnqw4QTfGMJvINFpIcUwXSJB3nczpQ2PxVOlf+Qjfg+yCJudUqYJ7wBWEhB2OAAVQIo6Z+NGauZTH+7oEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a8SbyFCW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a8SbyFCW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30DFC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754234993;
	bh=VIalM6+6Fvfzp7s5XU0q1LGbPTP7KdaVlQ5wIqFCtKU=;
	h=To:Subject:From:Date:From;
	b=a8SbyFCWk2GabsZaO1Wg4/64/iu8/iZWFdVqa+8HLj3JYk4yiPeLyb3RiKKTwXEuM
	 FIK3aDRJ828hBzecwL4/6c+JPk6o8LUTps9b58BHZxaNGpCNcQBw5kbwWldp92zu9O
	 FsZMtFnpFn8axezo/jLmU8m+TCJtsKswOl475p5J9N2wj/SH25wCZdquk0dPbiISuB
	 L9G2w+R391pZVrX0To5ztkujbAhnooP/aMgRO9Z6olRdS2LpTQgK7uwk4RIto04NMT
	 VaYU3SuUPBf4BPrIsnQ7NAGdiAcbzvmzxvCt6sHt+FwLugyG9uQMh4dzAirEpern5o
	 ekBndmh7QvGYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB18C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175423499358.2841.1394618524701270787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af8601a16026cb8bae3e38bbc028da7fd35ba313613e59b6984dabba092a6c36
Date: Sun, 03 Aug 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754234993

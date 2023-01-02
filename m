Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BA9417F8
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 05:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D125C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 05:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672637487;
	bh=P6WPtRPT1u0mY32a3yr8P5cWb5ixHMBBQXomU8NVMN4=;
	h=To:Subject:From:Date:From;
	b=W5A1cLPxNtdVPpn458tPGCB5RMEYgtrBhDuYgRKlyO1npzvMvfwUn2SFfU1JXIwG1
	 3c/PjSWCoRfNURk1r1ghDHy4sKxH3TwCWVpIIoi6Z2J/WFRLiM6HXT6c+7p4CCeZEr
	 tT0cYCTtUyC3lPhce3onoJCfvHkQmeuDx2K+6OHFdxYFDDadNZUWXunfSgZRSU0DUX
	 nV5z3zhU9KsElABvHQe6/b7aLD2bygGtAqiPH38UOeva0DqlGu28b2FfyU6sPPs9Pk
	 Xt88E7WAMWCre9UmGXY9yexScWAPXx93HKtZR+nRwQcxaarcMh1ZhN5U0FPLWv3bzf
	 P/1NeOTLV4F3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D8DEC3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 05:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167263748749.29529.11286725737325317837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 041bca64b2a80552c7bd210e6d64bac92babfa221867eefa98ae4cde566748d7
Date: Mon, 02 Jan 2023 05:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672637487

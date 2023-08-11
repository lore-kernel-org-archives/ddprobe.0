Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65C4B7F1
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 01:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDF6C433C8
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 01:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691717588;
	bh=wBtes/uarUQsMFzRL+aaPQWUIkkSeNHnxl5kydhydDE=;
	h=To:Subject:From:Date:From;
	b=tjjvTITi40SN1rJkaEgTSU0yH2kZJU8RPVEUDBAxyZ39Em7MqA7SStjyIEuiSOKpL
	 bajsHLq2AdeQMHRJLYsSuge09a2+SV8gWAQ4nWXVvHWOw+lR/+0+PgWyvPg2xOyBZw
	 A5iRIY0s8wFd+YXHgGhprteH2XPv67lLZXb7LRrsL9js2iQOdJi02co+2fobJGPnHH
	 zXYNnlbT3aXA0HT1UC+M8Ef1byTCVHv0xbqEVWot1L8JD9qjzdIuRuvfZGVYnaoF7B
	 7Rj5/aLNUJwNSqmoxVkgq/uRndzXUR/yNyGBiQ6gnfKzS+wyvXzJaNN7cEZaq9ySCK
	 3LRWaxD+vYrfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C6BC04A94
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 01:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169171758868.9566.15633824545494211308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 596a1c05bd292c928b03d73f6d570193aa185a27173d4ea02193d1bfc7b09d03
Date: Fri, 11 Aug 2023 01:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691717588

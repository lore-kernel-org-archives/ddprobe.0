Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434532F29
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 10:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4262C433D2
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 10:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681210325;
	bh=uVjw2AIOsjwz80PFvIzjySk3YGjteNWBJ52FA6HglUg=;
	h=To:Subject:From:Date:From;
	b=gQ5b/jpIHMHlDlIcnRxK8SqVv3y+rtVmZCxH9C8Xp0Cu8Kv8trpXLdpea5kYCOvSY
	 boYFC0Cqng69wxhXxxZ5jH4zomJWFgiMPUPpE5i/A4huvruzEzFW3pleEok39zZ5e2
	 Czx+1UfhoFlpMvd5uRsnfrBJVlzWZRFrA2DxSgx7p9jSbRCyGVXWHQBJGFAUgWHLcR
	 /Uxj91cSajkVa0YzZ3e0Lcvd6JXvbReSB4bgU70J0yRR92dQzv3nSly07NtnxK1TKI
	 rrCPPFRFa0VVPkz2tl08OeQp3ZtqzF7oRi4uXYZffTREolgIZkkQCu3vEKpqjzXHoI
	 KNoOe5JA25jgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1745C7619A
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 10:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168121032578.14385.5282019302282901881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8574c846074a97f57232deffe10091e5300969fd3ececcd195ca4922189949cc
Date: Tue, 11 Apr 2023 10:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681210325

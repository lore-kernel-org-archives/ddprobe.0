Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 647D69476
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 18:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C59FC433D2
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 18:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679509146;
	bh=6YrMhzRbBUkqDBuKbrc2hv4d32DM2Sh6qzit6YT7Xks=;
	h=To:Subject:From:Date:From;
	b=oikXn2BaOL20Of6Ya+IEaRaio1Dg77+D3Fh+Y4YmYtU9vZdlGJaQhqKFzjVUjA4l2
	 S31ZLSoRe7LBfYtac5jKZvYA97bPqAy0bQi9U6+kbrGRXysc498z/HgkUvIpXXPyLB
	 Av9GVslkYTTNWiMVnnI7Qz3Oykt0R+xDg1OIDHuFIBhQqsd5Skra+U7Qo4q9DgijEd
	 DN+aQhIH6IhJ/8t02deiqnQJNZg6e5HlDm7gcvdJHIV1qCDAnrYDDN3I4gwaiwseDO
	 cDIOcjvsdqju0Ec2vK/LZf4klUwii/15TzfTS83Wp6e0pdYlNGxTLhcxCTbhPcFtsx
	 Ps2UUg0awSxbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C94A4C76195
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 18:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167950914577.23800.3420330509781748090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 897fd8fd9706fc59e7beeb551d2abd7c3446b414aac45e7fbe8694d98f7ba022
Date: Wed, 22 Mar 2023 18:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679509145

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D63747E
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 16:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0155C433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 16:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679674865;
	bh=PJFVBFzz1JNobIw6W9KULPVun78DfOawA2m9Xg3azDk=;
	h=To:Subject:From:Date:From;
	b=HcFucVfuePR7hwhRm2i3AFB3u8simKPIFc+cibxFSwZ3qQsatb6r1NP9qR4lKozkY
	 BMsuu6uitRbwSiRfdeJXESXVG9p0zcMQRHBUgT5DPElIF1MYk6rV69304XBY7cE/Z0
	 96Yl6FbA5hJm9s3X6NsGiUdgfRr+09QAJUXmlJW553p+0cTmFfHJZ8QeJudbERszUJ
	 HHoWf5X9yE0Ai15xA0mEBclp1a9dKLOjbs0Uqzf8SOq7uQfsuE+u9Su0oV1CQ7u5PQ
	 k9b4Ky2yvznr5cm5ipTw1VUAv6vtIxeI5BzywwiR/OkavxhyrUZnA7C6BzlXZsCzhP
	 9gtgbGRF2Ez4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C24DEC6FD20
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 16:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167967486578.16381.16085594671535559999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1d220e52d20ee8a0e350600020204c2204f5baaccc8513dd4d04b67dd97733f
Date: Fri, 24 Mar 2023 16:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679674865

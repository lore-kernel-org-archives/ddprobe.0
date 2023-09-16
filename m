Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DC746FC8
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 17:35:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5F9BC433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 17:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694885708;
	bh=ssyJa90dy+CKJm18d6aT1I9H2SH1TNMMGqe4EU1cdI0=;
	h=To:Subject:From:Date:From;
	b=Chlng3fo+P4PeWNdsKu5kt05JUDKre1NgBc2g8cTUYbBv2GnkFYXcGUd8rQKTdSbV
	 4dcQKkagd7G23iC5W/bc3rLAT/kungjQjOcRXt55rbTroiYSFA5dfC9rOV6+KN0fcn
	 YXxht5LQi5D2GJIq0fYbk8us7+4RBnee6VAZfeIdI5KdbR/mTz1+PS0xB7L2+UisUo
	 DeHuOLY4aHw4GXCQyHG++PPow7WMCm0/n/mod2EzpiecTyUEC6ot2NYo1Iw2uugXee
	 yH4aKkHnTIL+7tK/UoHy5Cpzj8NvAxUgank+g4suVhNbiH6NJPqHPI/Wen8qSHNLp4
	 YOuZt9xLvXdyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6362C2BA15
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 17:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169488570866.17683.6263547464711017982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6edbb1c224f3b764786185275b0dcc003fdf1baf0772069c3ee3648369f53f75
Date: Sat, 16 Sep 2023 17:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694885708

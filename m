Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526A51C68C
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZY/r5zzs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DAE9C433CB
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704304096;
	bh=mQhPLvJLmV+IR1cMqp9/d3u2xdxON04/diTSFj+KW/U=;
	h=To:Subject:From:Date:From;
	b=ZY/r5zzsnTW5WeWebTJS19K8r8xUfGjXV+V2DspmTiBpdgIQ1o15gnHMbTkzI8DBG
	 ofe7j0CaDEZgIgq31i9urJBgRx4hWCTbvk9VHas9NleUYdwK4Keyu/nIDP7+ja/y4r
	 i/+6zk3z5bhoEzcfV3VrvLeeVgfCX6pClWMW7FV+rPMKsJ3XMym3+PSfA7nKPvBiJo
	 uPhiBR7nTgZrBiqIHYi92xhSIAhAmn8Yv14OnUO6fYe6K2YzSbRPgoaTbTbhTlmhwL
	 logLgktOJoERk4O92KDRMBP9ZiJun4ywf/HaAHNOSrPZxbN0WGfmg0LIBCXLhzeqdB
	 a/LTCcqSIIsnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72F56C3DA6E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170430409645.28824.74444167094426854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd5dbc82d691a59e6def5b962e27fa156403afab5cf52f98a92caa72a6d85144
Date: Wed, 03 Jan 2024 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704304096

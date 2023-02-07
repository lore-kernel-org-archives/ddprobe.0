Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38394BD33
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 08:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA873C433EF
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 08:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675757825;
	bh=c+uQdKMuw5vK+dZouqFggD1x2Aea/TmehOYbs2lBY+o=;
	h=To:Subject:From:Date:From;
	b=BveLFd7+kaDL/FoLYDwPqgcdW9FqC12xm8/WPCMmWpp9eMDPYhU2r3SzF+6beEV1C
	 5S7Zc4EfBLVvviLMIl6ek2PqchqY/fG5435T/55hySmP18SmH/Se1tga72G5Cey/19
	 LFMuq9gnpvjpdEb2NjrMACLP5ZUrCZIAcdzavw8jwxLrE9aqN3OzZRUo8TKn+ktz67
	 kjmO9e9/g6rXqwvKrQhuIIJi398rU64q22bNC1YeGS7wImUE4yLZy+CwKkHbeWmZRN
	 Gu3ONk5eLGm2Y9NtXyhjM3fBTY0Q0m4ZvM9AxU04OjCX6fgy0w9mxk1hCZsH605suB
	 ggLlotQuG9uTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDE1BC636CC
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 08:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167575782576.2326.11014417178633423027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62a67caff5b63865773596846c6243dc4f2bc0eb9a60788bcf3da798033600ee
Date: Tue, 07 Feb 2023 08:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675757825

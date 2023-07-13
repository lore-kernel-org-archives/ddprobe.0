Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D77C469F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 06:49:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC10DC433C8
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 06:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689230948;
	bh=1xYPoG8Y8Jh1BeQo/HWYS0Ie05H8SceJYsWYqurJqXg=;
	h=To:Subject:From:Date:From;
	b=DZSCkOzgrUrxlimYEjc1Pe696QUaAZ34S+1wnnFihLI1OvbmTqaQYPqrrD0xBxSU5
	 jj38BWvLdeFIb8A6JSyt2wEqbHuoFPohEwzOAo13RSNjksSkNyXE4UMXXmTdJbHq6N
	 Borg7jPTfi957pir1q+FWlkRYc0SsodZvONZuw9RZsm1M95RyeIdcZK1YW8634NpDo
	 jLPmdlaPhW5T5n19u4RNLkXvFdX2ZmyI+SfaGG80xZFzaeEyzx9pFNyJilna6qviay
	 4mqeFJcM3XT9p19QrFxe1YtxLpX+40VA1Q3Gwn6sYfSo8V69ZeWloq4Z0+ZIrlYvQg
	 i1S7EiIdxYe+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEF4EB64DD
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 06:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168923094870.27532.4390823900677759099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1444f363721500950c93a7a8124e6405b9dc39174a15f43816f818e634e79e5
Date: Thu, 13 Jul 2023 06:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689230948

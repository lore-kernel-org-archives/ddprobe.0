Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6224D637
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 05:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C89EC433D2
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 05:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680671226;
	bh=SoSMWkv9DGvKz63VG6jbyo4GShOcqcjj3cPfAlE83nE=;
	h=To:Subject:From:Date:From;
	b=LrgriSRrL6JWu5moxg73DugEgp2TiPXb5mgyCj/CEgyvlfUb1Fg+8tqexiAZ30dEw
	 7GxI3AHqukkiDoVcTi7DBaZuSdoFKituURpdUD9eHaAiQFzO8mfDMs8gvuKpc6TKTu
	 bxsBMO7VvIDKPfLRlii1r/AduMZyWmdTbsS8tJEk6xOSKSQIimqqq6WWwXaLRO15Y0
	 3Gk5RNmR1xCyGovRYhC45GkR54dwqSzNJZryzMJywqDfTlldUeQhUMuMQ4Rikg+gGE
	 bvH99SrB+ROkH82E2HDMFufQjr01Yr5jQmbgelVMp/8brbgKvN6CWRJ5g6ubyWRw2n
	 U+ADgdlrQ22+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD618C7619A
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 05:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168067122588.8511.3358896295916942975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e15341e15d58cb66eb85800959f5865be68b959a21a0014b7cbdb27cf216f243
Date: Wed, 05 Apr 2023 05:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680671225

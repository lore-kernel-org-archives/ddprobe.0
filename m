Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7597193
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 17:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A206C433EF
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 17:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671037287;
	bh=kpxid72xY0XdjMmzPtHF3kR/bRc897/vWBjI/Ak64Bw=;
	h=To:Subject:From:Date:From;
	b=Xbf7d3vQeR4Wv2miUnDdy4ckDg4bKaTj5KHz1pBDRkq97j9nkC7yHhd6uMIA/65lO
	 0s6jEzWbuIjdJBG/Jkn6L+XOFxhSwx1rJb3rtWdQCpcWtEoAwWcCM5pb9Ihkl3Hm3m
	 7kLtjGvjia2V4jXm0psoMOmPPa0ZpBViUZqVn29xOGdIeZwU7lExZJYMSAl6Pj9Qtw
	 k0w6ctw7I7GCFpeY2LR9FgJQD8/1bSYl88Y6NyJeXXyW3nodeI6v5g5WBriSjpyLGw
	 s9IpC2teR92UqWibqpIqNCAt8vQ31xTooVeTrhwJVhk8aFf4viwItUeP5JJK/Fw22x
	 mWHBigk5WIihA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61DB9C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 17:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167103728739.5795.10708054234001315138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf8e12a2ba8e21b76ddc4a022e8baefb6b4e320e891c10281d48f317200ea227
Date: Wed, 14 Dec 2022 17:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671037287

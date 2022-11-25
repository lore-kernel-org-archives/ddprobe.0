Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C36AF3C34
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 20:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AE65C433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 20:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669408254;
	bh=Hk/6aTQlOXtVqetthwlxbMLXOSj5SI7GI2+rtD9u9ps=;
	h=To:Subject:From:Date:From;
	b=YuZC99E3v6XEDYCH/KImdHVOLyne2EHMAjuE/OByZiNHdJRrycr6tgprkGJmgbDgH
	 33l4oLTgksrCPiaYhE7OQ1CDHRkpOn2+DtQEdWRqKJmnR8cr6pYROpHzJb8qI0H36w
	 k8h/5ly4pA7a4hQbiRo48Jm+T2lEnmgoVflYUNGMGb3XLpgNKVpiFzNk2rxSl+W9BW
	 +Ls2EXoijLBhbCrQ8z5Wr9v6CsguKWVxhmDybqNCDg5vJN8j5xOjMVCb1X2mx7aD8E
	 btzgE1PAVK6qTTZNa8Iw/6olvI9k66hYMe3pupo+vbdllIXWl/OG7uCkT63Hl9Ovlk
	 cMcj75qbwFgUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B632C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 20:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166940825434.18637.8879555090396010408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e9beb9f8fae4d145cee02cb462ded83c1a4d73c5a554abaa716da4d9d6c4497
Date: Fri, 25 Nov 2022 20:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669408254

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF3A7E
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 04:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C85C5C433C8
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 04:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690863728;
	bh=sbhk85Qs4wJDUed9o9i213rqx7BaDLMhcp/jhYU+NDQ=;
	h=To:Subject:From:Date:From;
	b=ufl8UCQD1PKM7ToD3Y3A8EDrphxTDnz0p19NPCiSWPmYuPM4uhNgM1xZ+Xd/j9U/9
	 YpsN6/CVmT36SAOTRQFny7pF0FxtmUy4ErERtY8lcURZuH+t7mim8oG3PdUDHzPj5h
	 LRz201cXwZpa65M2B6ftKf4VOt+yC8GtEahS5Q430vh622uojyGG03zR/jfdg5CYJt
	 vpuDQF6c6ZnGdVQLtrPRCH582yZOvi5++vuyYleJ3QkgjD723rcKz/WQAKFE1JnBpA
	 YjjauK83qid3ofZOe7JMGJ5iyfSpKJEFeYznVC+w9kGgJingysiRB1DJISP/XMu4nP
	 E1yVjD6i6czhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7FBEB64DD
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 04:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169086372869.28563.366392752743761326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 592c7aa38e925ed2b04a820ef6ddf3eb16f6e7e9e87f2facafda6e558ba21738
Date: Tue, 01 Aug 2023 04:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690863728

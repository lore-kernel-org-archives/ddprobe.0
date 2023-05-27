Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80D97389
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 03:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 22234C4339E
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 03:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685158086;
	bh=XEKv6bcM+G5dznyWDMWLSd0aEpgdtRrgTDslcBsVYz4=;
	h=To:Subject:From:Date:From;
	b=rH4wBHOosFxS6qWBKCu4atkYPIWKB7V8dJw040m2iy8o4pQfEbHCfq+GUHULIj/U1
	 Y60VfwBwIE1L67rBRStn+Y4PbSqMym1z/Y5m0Th3AqNG/wEXeRkOxbdIP1ZKneqwHW
	 +3O5n2P/Ss06ZiJKt0ZX/wDzHk6hl9vJe5PZrHW803JELskPtYuCZXNIkMqs+KJkDY
	 19r6i/JNV3oRvLOxYWjvnxJjGuSab5+3NnRszTMJO0wv69UojWrHjQ/0FB0yiF0e7+
	 xM0M9zp0rdBAJYqSU+LFLC1XHK8O2tZ4xnJp7gNBHTpivUNW6GQMLZjb21kwL3OBzm
	 N6iUIKcu3OC2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E358DC77B7E
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 03:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168515808583.22933.9285906388102811556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7dc07267dd65b1ff93d9e2874f6933b473bdf41154ae369d344e5361b921072
Date: Sat, 27 May 2023 03:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685158085

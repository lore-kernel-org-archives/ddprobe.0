Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512159457
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 19:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE9CC433D2
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 19:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681241525;
	bh=x+b0cqnqDL9OivzU+efNsOd3qDtVNM8PIBgm2gBZbx8=;
	h=To:Subject:From:Date:From;
	b=UvtRjWjJVlzNMC/ly3lTq+ShEsYu833cLj4brCoAhItDKWDHC3rtlzUr266rMzu0x
	 i3hnsOruAfcRoaCPywKX5ttFdvuKQYfkMr8w+gXu9NSun+8xmszX8pIi+ZOaNpYBH5
	 5hNucMgEZocy9zp323JtRGN8W6IlRgXUqiSfUAAwvvJTTruY3jd7AfzU78LaQHIKt9
	 56sLiwUHUNJXtMzinAeuBIjug9sOzoedO74jbDfCfmkgh0nsaEPhzGLHvlJG9LlATp
	 FlDigl9oDb3zK5cBcQZzYUWDlSXjDjnuSq7exHmiMOiQLnjSvX28qEBuVUPUNQzav0
	 j1ParunaMBoeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF692C76196
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 19:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168124152576.3881.7703075457082773953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a34512d481224f4c53365e2303ff0434edf228198206ad4df95c12d47298504
Date: Tue, 11 Apr 2023 19:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681241525

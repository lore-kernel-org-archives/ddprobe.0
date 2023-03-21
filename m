Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE9879C7
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 08:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09A54C4339E
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 08:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679388486;
	bh=dTXeQ7X5fcKjKIfvle9xYQJJtjQfoSWoZecyBkjnrks=;
	h=To:Subject:From:Date:From;
	b=WkWT58CvTy9ZMEDcX+qzftu2n7cUwqFaG+88xj5ZQLjkumwaD0YHecQefsKfGzqyt
	 WyB1HDhmt5zuTaMCPx0Crs8fVjW/0Ww1wpesMlXfDVs5XZtOwNI2EOegKqlws3bUo2
	 3NKWdZH1ECbS9CR9x0jJSO/lX+n997jMbtUa6HBMttfx4HxQQyuH918KBTWjKj7dC1
	 BM5aD2C0z0Fw0lx8ALKWTO6v8XBmHSZCyUthDwRg6WwpLp22IyDcKPubfYjx1iVzXA
	 FfVMts5LZVh0YkLC/0TYGkrzlwUvtHe5i86PRCeOsSl3qVcZAU6ySABKzZLb0Iw+v0
	 T6nai0WY6LQpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC2E2C6FD1D
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 08:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167938848582.29666.10760956928441652478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c572bfc6e5e2eb62d26edc9af38c89b094e25b59e365a7d487671aa9a25bc0aa
Date: Tue, 21 Mar 2023 08:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679388485

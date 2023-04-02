Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4883B442D
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 14:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E86FCC433D2
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 14:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680446705;
	bh=whur/XMa0g5V0+xoV86v5CtLY40+4AdjMamBOkY2dOk=;
	h=To:Subject:From:Date:From;
	b=DCeiQFx0/G0LWknPPF2qwQVqPevnN0auxcYCipcAAIt+9gVMD6P1iMp56RPFQ4BCj
	 xZc/J8AUZqjzVHi4gAW2m2KSN8T8S9oK9o7GUvtHeuveOHuQpzYZDfFT5fwadg8vut
	 xLR3XeK+30kijA3PIp83eUgTd0rRiZrdvMabF69vnYubLwLk5Zl4EJJj0RV40+li6M
	 ejECjcLAJmgjQBvsuR1KLGjPcW0NzJIxbUzEuMyzhJxzKx+qloltLa0N5zyTBvC5Pu
	 pFCd3bWjjeVThYdintGgVwiF+HM6ys5HG5BbbpPbnND0UmfMhdGAgZwuMxUQh8w2h+
	 S3VjpTyHNNKdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C43DDC7619A
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 14:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168044670578.19254.8722273118813938051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0eca2d757ac79f76548f4df4f70304f4a25cf062d1958659a0c2d7c2a17203f
Date: Sun, 02 Apr 2023 14:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680446705

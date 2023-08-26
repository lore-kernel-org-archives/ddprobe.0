Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 706F1A53
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 19:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFBF7C433C8
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 19:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693079648;
	bh=APG0BLFQm/XZFYp2DAR1GRYUFhoKf1edjSIfE4bkm0Y=;
	h=To:Subject:From:Date:From;
	b=IwsHz+as37340F43dHaPkDt1WMbgjrL98IuBs9xL9fPGOiK210Xfm7ril/kVzrrI5
	 +E6G/ks95JfJqEOGd+IDJ2BQbPj6gisaxQprEwVhALXuFUv1yblSW7YI7/If6zvvDG
	 ji1qbIExOi0IJJw1VwjdPXTWrkl7heexUU+KGRgd50Jvevsr3tU02qDiKks/CctsTG
	 pMwAcVZAw9jr9dMfMXWNNsdBQNXDvbQmnzZcB+GLFJ3Czjf2zCqjxX+wp/LR5LTaQe
	 b0Kxw5LElfB/PohjzmIWjc9OnA5ybSKyDUmfKzfPyA+V65eca5jZkHzSXcTV//6hIr
	 k5K+pexT5SPGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4ACDC83F11
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 19:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169307964866.27109.18347132946323052194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c2db4f18561c913ff11950a1f984fb505a10307a0a5d35e3dc03d861c63a3c7
Date: Sat, 26 Aug 2023 19:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693079648

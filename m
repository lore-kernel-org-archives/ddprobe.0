Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49300945D
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 19:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F370FC433D2
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 19:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676661906;
	bh=J6CgPadtKqeFsVkx9gD0c5V097URpBX854/aW3rggdU=;
	h=To:Subject:From:Date:From;
	b=e/WAzdWH0VAOxGMu0imZVVSU3OF6+lyVjxNPuclAwBUc0VDi+VpF/GpjCUK/qHT11
	 lYB7NpzuH8XRYxzLgTD/yDtyB+58HMXmVOmOvZcx12HZ1iBEVNuef94Ly9V/i1pFxO
	 jiFGqrABbheb6XMT49+Cz9uJm8eZzHwZMu6AANrOPIqYSsDhtFSOL0V1iqjRc1/iLU
	 YiyOHVLUFZgQkzNDqzg21FsQO3MotRjXlXAfJ9SOwd73en5QIrwhABlX4jNk4sLBVW
	 XyfiWJg7pJdJTMuGlia8cYzIgarbRy7at7HTKMnA4pjXT2EOal8v1RqUePr7iXfpTi
	 Lp8fEV9xItq6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBB51C05027
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 19:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167666190581.14835.684210065909208604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d61dfd2b42a2cd699e0f35bea63590e7f03e9981779a8940467ece301e5820bf
Date: Fri, 17 Feb 2023 19:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676661905

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DF033212
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 22:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D89B8C433C8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 22:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688338508;
	bh=+oA48wGa+pT4aX0zyTCJnOTgXWMa1HWpp4o35TgaEIM=;
	h=To:Subject:From:Date:From;
	b=pUK3eWInJZQBJcGYKHWASzRxZ739dPZ7XOY/jVruABsPppC4wiKu88Wefm3UiOy4Y
	 9CIekVVVhrZVtK7mgryxwBkSOEZ8HWw9XhRkObsAHupXOOqzI6/giznpw4uh9xZg/2
	 MCCtRTuC/8ciZCtOXOOODCNhtMFsYxCMezkgcYFNwxgplGUTCG5oiCq6Qbc6NQwaFt
	 2vPnO+bi7DYS+8fDOTir4VMs4FVXWkbB0jBmEywUbK6pumPyoTcrPMknNvGDxj9aaM
	 uJSP858hPo37eMzt22w9hBqVfqCPs3STExUYDYbklvuZR/ecsP8mlLX8mO1Dj8B3dT
	 LOYhMR9bbnW3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8EEDEB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 22:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168833850872.32475.12494521367372602551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19dcfae24dfa8585314d39da564d7169afec0d06331c1d80be2abdfd2d5aa42f
Date: Sun, 02 Jul 2023 22:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688338508

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B48237F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 06:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 632F0C433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 06:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668580254;
	bh=mDMfetkbTWYkg2h43YQ7zMj5FZKG7vtBaMDgHWMVpK0=;
	h=To:Subject:From:Date:From;
	b=t9FiUGracHMXSCm7y8oxxi0ljvUX6lwKfQHcxT8C5VgjaqpYVy7zC6Mj9TzYvRDCU
	 6NYQqDbMY0NH/AjoUiAZejRJ6yEI3me945gtzyLd9e3f4kSNKhtbaicAw7OtEqBehl
	 Y0IYrSBgu6SNuZNy/AN1fMzgBOUAItBF8rOQkpH7gaXmMZsrG+fdx4qLW9ixi32aNC
	 qdH/2qh0JvceMKNb7ZifLPIxs8NOhKVmue0xAxcy7FEIefzA6w4r+6HAR2GZeh9Cg3
	 xEDuPnlitNCLKXNi491PWlh9bEypCc3iWRjFELJUP1y56udzzxuRy2sc98e3Pu/ZSI
	 kSFCKXwV6+0rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E7D3C4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 06:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166858025431.31205.6402137603099245487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a77ed7dc07154f36a3c94d832b51ea78a43406c553e5bddc228f0ddf6a14aca0
Date: Wed, 16 Nov 2022 06:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668580254

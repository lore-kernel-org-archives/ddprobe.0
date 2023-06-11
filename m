Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BD8710F5
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 03:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A628C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 03:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686452526;
	bh=QigtBxhNTE0OfyKTL12lADdyZnqDVQnHnjRboswsasg=;
	h=To:Subject:From:Date:From;
	b=MOY+RJfdKJc6D5CkkUPujzBQBw6NtSu4A9hWyeo3hVLHiMCzrD0ToJFyyc/Vpicic
	 xzG9vzjaEfQ3CtxcUi5XprLzwJCQiUrCsjlNfJaAu5sfIQdJuwhJ6e27JBUnBoqZ5n
	 nIohavsg4RpOA04FE74FeradBu2r389yK0rDNGhilYeRDUOKwMK2s54jSKKTjtWSqY
	 J4IUR0RkxEK+YIGXD+KYItr3ajPeZwExh3VfvNrnmy7xFeYABBzu/iCdNrGLQf7CzU
	 MsnpIjx5RI1ZHTSkgEwXXe/y4liVEcMF+9VKyhPJok+8zUdJRLkMRq6DQVeKgntJ0Q
	 P0+beraxeLLWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3A9CC7EE29
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 03:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168645252573.5351.17408344624010524764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72f645a38b9c9fe00870c3ca95733b50108a5ce489fd75c5a20dada7c922f88f
Date: Sun, 11 Jun 2023 03:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686452525

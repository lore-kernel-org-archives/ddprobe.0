Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6331F286B9
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 17:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4SD+uRC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4CF6C433C7
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 17:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697477828;
	bh=78V4TMxZQxP1VX5DFP6RgoYD/6mHLL8bkfFe+KVgQ1U=;
	h=To:Subject:From:Date:From;
	b=L4SD+uRC7fC1ihe8C10PeOs0Tetj86gGxVCeuZR5msbnsmZwC8cg5pp5CtgvDGaVJ
	 NgAEBCVK9VNaUwYCaZLQYgM/PsK9PNrD7IKoR7pGRr7+AeeYuVWCnSNOUuypU71B08
	 WIULHeeA+Xjj2qXgZq3I90J7hkJcaqHcqjAaqSq3U66btJJB90HQSOU+MaT5FDoYJZ
	 Q5l/GDTSdd4RRxGZYy6Ii6tdKvZStetM+kYcwE8CBom8ogHwvo0vjd953l0l5LRptb
	 nF9j8+wu9Ea4nlBwD1swcZViQ4jNyG/j58FeQZAw4AZulF1f82D8Ys4Hw9b1MbNnEk
	 zgBMpfF24bnfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA385CDB474
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 17:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169747782868.4513.16723851552973205854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd51f187b33ce8d36f512fc86b4cafee1168d18a95151f93bfc1d67e2824cedf
Date: Mon, 16 Oct 2023 17:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697477828

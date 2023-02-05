Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390DB15C8
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 03:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4F76C433D2
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 03:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675568765;
	bh=FeFxZPU4iBACI3JHZ+feVU4ozjXVqwr0QjVgce9lPN8=;
	h=To:Subject:From:Date:From;
	b=LpxnXRVR6ovwxF2/8ha5r3cKyB403tqJFvtUbMKsWtGc9v07HG/7YUIjeVyngh+9P
	 ef1NbtJi1mX0xw8x6hAyE6RXAd7PlRzeP7sBsPcnakrnUXMPc3i1o2VzPTYm0lngLq
	 5QYuqhOtOVrxVfc9i/hg8lambrq3Nsu3/tddZ6w2E2pwZeRcQM7k7yyVgtltfkqsTg
	 duD5PiDy3dydGajm/17NKYPr/LShqOvuy9u0WXGIhk30XpGDtVhPK8TcEaXXS1IecF
	 l83R/8ZF4/KtfS0DDrI3STxbD5sahiU8720UGxq0YLzEqCdtvLfjQM+UW5tGBLzhdl
	 MKr4X1S+yJ+TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C471FC61DA4
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 03:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167556876575.18021.3775240584520210059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fbb102812efe35a9c88dd31fa8ddfc5a470a64a67ea39e5fdd97f8810ab5f0e
Date: Sun, 05 Feb 2023 03:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675568765

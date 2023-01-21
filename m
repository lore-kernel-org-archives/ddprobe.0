Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B86D386
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 10:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFCBAC433EF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 10:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674298325;
	bh=BgStVc4hNp9xycLlwnXJVkUtLv7gqO/6/N953wqpthM=;
	h=To:Subject:From:Date:From;
	b=kPzTMWdfltA5u8sI95Zsq8/+It2f8JE90omINjt9wXF+ogtLJPJdLbJF4scdYvS04
	 v0q8dxgQfs0KqBGvGcpOP6uXWuOmWaBjvYnfPSAMU4c2EFG+sKNIWvj09I7Wphkz9a
	 bLut166XJ3xk4SPCTVl6zEVprWwtjpECpw0wJt5dPQs8f05i5DGHaRtFuGkPlQpluL
	 Jx9KCdX22hMblemWF0ZIF6e3QWG5HFREHG5o9ORp4DO6b+PFkHpJXChGtX1tvZlPP6
	 bwHVwEgYnEQCwiomJ2XJ7MVVuLeiz7AIiA8Bfx3Vkm0MfssXNBcs/udHgcnUzAFv6q
	 fVIeJPSoZrySw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2845C004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 10:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167429832576.6999.13871252718276584618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48a9dba7199c7d9ecfa6e9427102e84a2f14a9a63a9d7b22d19ccc4a97d68334
Date: Sat, 21 Jan 2023 10:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674298325

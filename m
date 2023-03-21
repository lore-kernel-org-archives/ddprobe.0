Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 606F910EB
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 04:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEA6BC433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 04:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679373486;
	bh=gdi3CpaK3FrVuniEEo752IukpPe/Q9Iw0c/SnK0EmH8=;
	h=To:Subject:From:Date:From;
	b=QqQfkjfF51BNHBrN3xRFIIRkVXzQne7yxdnZqNutTmtesu02YqET4g8Xe8fQK3yEg
	 bxWHR7/4aQYGOvDC9G63w25SnbasMdaPnR35giBmPjaKAVC0XdD8xZc4YTCGS4iA7p
	 OEP4Oh5HgfZWgiUD9d465Pk0wDBYUFKcnzHJBLc1cNP7HtZ+qUSVKUr0ydUHseBlEB
	 WC72AmAIjPjYVyqASC+oaHWWRl+/NMg4bVD9Z10M6wmJiUYf99PLL5e5YLNwxLy6SF
	 pqhKDSXhC5MVFfOqyGZ0NFeCA8AeHx9n1wuw76SlCVCgPlsGabCXS+2MTdhnBdKIth
	 boNNgaulj4puw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D22F4C6FD1D
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 04:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167937348584.1436.9613947795550285369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7df85f87310cae93a085dd5a662bcd49b72fc14f6bbcabe483ee47fb2d945aee
Date: Tue, 21 Mar 2023 04:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679373485

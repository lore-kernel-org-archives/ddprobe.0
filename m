Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09216210A
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1E9Qfgh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F1C1C433C7
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700635096;
	bh=I4h9BGTlCnqRxJmKQmcJ8WaO6Yqpd9bEn/Ixxsywrng=;
	h=To:Subject:From:Date:From;
	b=C1E9QfghAOhQtmcwTa8dC2GLs1K658AIUNzpQBSaOUb35xXjZwJS994mbdcB2Cb1o
	 3QD/E/uXqVWCFeUlEchs1etLzk2mvVaNQfQyPd1yOCe5ShDJpEOTOqfqiHlTmLQNpg
	 V456G4ndmyGCszxuTjGfZPpakzAhp0hVyERq8SyLuxM82JjA4lssznMICAn3bts6JY
	 k7bYl0UPc/OubyRSdgMboBpmpMeKaTp/8WKvEJqQyoZHnw6yIgKfOW9cAUoZl7vROw
	 85BUjWIWLQ0myYumLzLn897zZM2LqyylOKV5/oPLOxN7zSVVEfFCuJ/zC2tpcIY/pX
	 BMCJrFTVuS7NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 612E9C072A2
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170063509639.18144.135255043696819963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49ea84fa4e7ef6ae244901efa421287cd0e7d0544d15be1725fa7c2b038a873e
Date: Wed, 22 Nov 2023 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700635096

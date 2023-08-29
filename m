Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82144A47
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 03:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D99DAC433C7
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 03:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693278248;
	bh=q+N8RozCHDHr3fNtCTivqPgJ/a14mhe7TFOv9ugC9Ls=;
	h=To:Subject:From:Date:From;
	b=hUmKWMt1RbDD1Mv/PWAuJfBcIe32i4tatk29xE4pIjekwFGLqnu3Ly9P7VnXjEkl5
	 Jetf1AjvEUadzxk1psiTYTmsUCY8QAIIYfjzSjsGAO1xTjgWJ8vTfoiNKW7cWsGo4v
	 KxRXVbd3FkiyhdXjcP9QEwRrtvFbcd27dMXIHaVrKVrCtPLKxURIzpOCXpva5pTiaC
	 9Qw+eZYy1FgHDSNe8iy4F7/ehzRcBX/xFD8TuMKB84O1KqaPh3sNU6TBguKrN2KOpU
	 B4T2cntCK0Gj4CH6KLiOw9LwfvngSQcmrS5fJB2MHZQKwnNXGPFn8f/y5OyS/GuFyj
	 g1B7yYg9/WPjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B256DC71153
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 03:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169327824872.24372.11891490776336204340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e04c7d0198e80e6f35cbba3d9960a4592b6f1204e4f15dbf084fcf6520544720
Date: Tue, 29 Aug 2023 03:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693278248

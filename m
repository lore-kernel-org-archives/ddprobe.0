Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 732F85229
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 08:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E88C7C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 08:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686645365;
	bh=jMuPwe5BOs4SWX2eNBAviayU/a2Rp4KvhI8MQKSPZsI=;
	h=To:Subject:From:Date:From;
	b=Gk0lRWQpfz02Ph4jaXtXsV741zDpcN4IrLrkV/Vje/ZqDqUXJU/EG5KGDf0Yh9wzi
	 Jjcz1k/n+F9CxQ+QsCMRj12hMJN4dWc9pNeKuBwi070q9u4dHyQ8lvFxNvZM07t03W
	 N2aW3H8+Yo+olVUAI4zgjxOycxensOGmkgKCgCyGKHc4ULs7rXwgbXxM7V2TdxNnwj
	 cVxn39mbTMCQnN6wSgu8Gb+5OfOEN5uUg1iGMcqcCwWirVklR1Hmv3Bz/2ftbCyzbQ
	 Ss9+8FlsREEQNVCZLY8XURDmoQHWEusYGdBq5deEFQ5boBLT99p7zUabEhvogTQ+Vt
	 7HnIjw+JR6UUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C674AC77B7A
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 08:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168664536580.28969.9709641346212624479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4ef9c0984b77a54f84158307ce26ab7eec977fee4735c994644438125edbcef
Date: Tue, 13 Jun 2023 08:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686645365

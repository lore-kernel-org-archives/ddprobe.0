Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D3D9168A8
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 23:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1F31C433EF
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 23:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685577246;
	bh=uDvLXCH/qbQa0VGP+rmoKJrbPq+YdQA47nYPFjvFeFk=;
	h=To:Subject:From:Date:From;
	b=hfMZ0fhYmv0AP1+NM6OAyknYsq5kv5yAayXQojaBcgF7F0Dd3PfTtQbgVsMd9kiPT
	 nUo/TOdpcOk4se6xY+3X2joHNGSFp0n4XBUWUssJWnWySGINZ5pynQPUlvK92+KC3A
	 e88/tQW4h7O0Dp41TvMKdtdOqs+RL/SV2CpSbADUG5YORYKkUREI6SjXL2fsQ8ubj1
	 3VQ/Iiq8moOe5STXUVns51wzrMcPre9ltooxKc/Z14Nb8cyIrnloQB0ENfWIENXntj
	 eY30z8JS01U9WXtkFNgL0vnpFrA/yKb5A0IQwWo31ivHsOypoS4YVVO9Ms4GrINlD3
	 hHoaWNvMsWhuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC6D0C77B7A
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 23:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168557724579.1277.14245543687534892898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c93bc8cba00ff087da11fd70663dc479703d6eb5699ab667fb62556b800c874c
Date: Wed, 31 May 2023 23:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685577245

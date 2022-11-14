Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1EDAEA2
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 22:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B353C433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 22:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668465054;
	bh=PHPzfaNEQxB9vLmsmyenMiEyl0po9sBYHrej7MC40Jc=;
	h=To:Subject:From:Date:From;
	b=Og/xLozbktEFVWj6T56a+wYKOSAh7rhfe9zfJ6vSLLD3zD0cfiMD8MdhoRUbR1/7v
	 nyo5KWtCb3lLhgWqW6kXdD2DLxyCpqOZbmZJccaz4lldt9N42WDHxinuBXcwFMVAmL
	 1kjZRYPPFT23DQCUqUV2gCRHyTUpfU82HlJfteqA1EYs1RpSvUFXlxYH9YXmHKsyB6
	 XIV8A5embzCRCqFXYgbByiEmCW6rewVF+8Cy48x6KGGwcDERvypHNuWxOm89USyw5H
	 uGrCco44kSs5TQai5Sh1Rl9Res/JJYXeQk2y5ui+dl4jnwdQNM3IMu0HlsS61pUgFO
	 iotB2QbY6wWBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52849C4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 22:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166846505433.28051.2102944625029647511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5ac96682a17ecd87ba5b9680651ac9cda8bbff322ba6eb3b63c8df8dd4c8502
Date: Mon, 14 Nov 2022 22:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668465054

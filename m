Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E9B517D1
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 17:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08191C433D2
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 17:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683567546;
	bh=Y5WuCi6oLP+GeXxjxMeMOCyYnD8MhrBe6wN3e8zsl4Y=;
	h=To:Subject:From:Date:From;
	b=imM99/Cno2s/j16tql7et/yuRCEQJa1bj1HSPr/yHwVN18Z1MRet0AIXGAOZK+nMW
	 c2sOxzUyeZUYR0fDAlwyvfBEqs/a9C4tPwTv15AfdrtvttrzNK65HyI3jbOMVJCCVk
	 F0PG6NR0w/P/a0e7pGC3kJ//CD6kaAUGChC49FZa4xz0MtHN+ZiASqBueEoZaJx+6J
	 KRcw1T5sWaiGE5kCncOWK7n+/bmlY25zlnO9YlNwzqreTzOU3FrV7ZtQQDYP0RKGGj
	 7j6Kn7MpyC8xPYZV/NUbph7dW1L7sM3Q5cDmQuPPVG2WgfNTNz52elyRgX+udlk58B
	 RlmArenetKKhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D84E0C77B75
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 17:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168356754586.23868.8789272791773445563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87cbf920712259f1138ca4d18b5bae87bcc7769bf036fce695fbb67154890fd1
Date: Mon, 08 May 2023 17:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683567545

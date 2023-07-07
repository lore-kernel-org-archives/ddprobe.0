Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D8120E0
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 10:07:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3287C433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 10:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688724428;
	bh=lGoUhs0Jl4JXlxN1IOKwJ/zfMVGNMebCBm4tKfSSKpE=;
	h=To:Subject:From:Date:From;
	b=sGfRB9iS4DC6Fpk0dQmW8SDGhkiug3mnHZLE69lS1HPqWsRlpDcYyk/k+xI2yoPQn
	 E/k9V9zMBIlLkRZVkxUPW8Mk4KGwubkZCRhzCQ4uxv0GHH+5sp1JDnMOTPGnw/ByF3
	 agUAesLAhFbGRA8JQJ+ofNmVc1fZkuCOaT9D2uN1o0KPpEpXsNJKZw6iixQlYhoS8g
	 CtlBG3xpz0vAeZecYPGlFDWxl0tvX6Hlp3BDNCqG8hn5x+U1g6sl5o1pgn5m64dWu7
	 wMRel/PVYNjvw3+EUKB0mmCltK/ZqJAkttg+AJJZs7SS0YKI6fJva547QpXrGqcf/Q
	 uV5Mnjocd7Xjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4B42C001B0
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 10:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168872442866.13171.13855345402121710861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ab392d480cb542bd9126c2e156469d55ed30c897fe683642fce20fc5be2e2ba
Date: Fri, 07 Jul 2023 10:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688724428

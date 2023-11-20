Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05D961E508
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e+K544yV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A266C433C8
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700498896;
	bh=G5tTlmIGT/lpB7wPFdsMwmHNNYXsVXzLTueMuiNidsE=;
	h=To:Subject:From:Date:From;
	b=e+K544yVvaOfI0LmK27TsIaEGnRqs1NpwZzruN8gSVaI+g3L3Ph4dyOFZ9QriNKIi
	 vs0vMt372A7usuLJse5MnUfED4jaTCte5IWeJQrqtaK8FSMJco2NrzoJisuC5Ve+v3
	 RTf8wHY8f0YGKH4tpAbFn2yxM6HFhPXDKHio9Uz9oC1wr+uOmsMd57d5YUhRfdz5rF
	 L8nTxPli228r1hY+TDpoTwlslqhAYFvkkAz7ndQoRR03xAWfqf4jfw+nBBBpWKfsE7
	 7WXAqtiasPMyB24ll9bllQPEzG3MFKIM3sff119VelbRjLrEzcGeRJIRxYolI2mrwf
	 Ocd1pEGxHfShQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DE97C2BB3F
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170049889637.2058.17095725943489689775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5067cc39ec4f3120a06aae3bbbc2a8f752b61e4fcccad7f0da2f10d34a9bb76e
Date: Mon, 20 Nov 2023 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700498896

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06A521FC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iTKR4yQo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81991C433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704587896;
	bh=ihnea12U1970jwcDn9SGc09zSw4MQVif3a6kP/mwa14=;
	h=To:Subject:From:Date:From;
	b=iTKR4yQoe1oYxHvCINq7AyquW9V1gJ/OD+ZMMYMZ4ws0VgB9Kc1oCGDpuBUvJuFYZ
	 1mmKEiNGIvISjoOy79cnXyx0W0IPZG57xnoMUqpDxGN+flmKPISQ8uWEzCz8/Fh2Ul
	 NYgWOavMFPiaGr7waXuign2F+ScuWxpmLZJC5mb2vF0LtxuUSGFNyVkS/ZhbXAUr0l
	 BOzApjGDuQnTXcpoTlv42tYIwr7yZnzdrCmSY4+MmpoCL9qM1XNguST2WJUbyEt3Fo
	 Lw3zorOe9Jf9bAFqBQL2kZSs2XN5hsDNd/Kyk88pj+1q0Wnwkjc5sBZfoBLyUvyWS6
	 hjmGlnXTcq29A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 614D1C46CD2
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170458789639.11964.10572475087616787724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f6c7fa48261438096baba52ccca762898223cd3bbffe4658a8c0fe18b74001d
Date: Sun, 07 Jan 2024 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704587896

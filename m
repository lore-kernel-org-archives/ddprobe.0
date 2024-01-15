Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD4418639
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjcwZRYm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FD7CC433C7
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705344496;
	bh=bFFGd1/pZBydeIlfQDtpXkbvOToFkRyuN1jwiQ2FpeU=;
	h=To:Subject:From:Date:From;
	b=qjcwZRYm9F/9TL13knfkOvs3J5cobe9fFJvRKbADRwMI5ft6sogfS0Qp1H63WIvQO
	 OAsZ+1Fd+rmgZhjLcml/w4z4v+6CBU4PR5ZkclDkJPprwPpECaajfJWSY26y6kS3ZQ
	 MDQxEIMkEY7I4kS7/8bsc0+cc2VVAVA4ovtf0RrQ6idvkSibIFcfJHu/ivh8nOtXE4
	 cqufua1sZqte3WGRDfNvs63kNprkaIbaseNunICunP0K1wnmVXvN99jR+r7D18edSu
	 vJgl9uIApQ5BbpizyIcbly4LpuIvf/4saSaPyPuBeVxdG1L8xkbh3fNBHKV9uIC10Y
	 oaM/Gd5RyPV/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63501C3DA79
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170534449640.4537.1925766501137017856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17e2114a0ca439791f1705e831588b0b6558f726d385e843b007f88f9b53c0c5
Date: Mon, 15 Jan 2024 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705344496

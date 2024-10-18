Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F4B18C34B
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729288554; cv=none; b=trnrzbTC6KRRNXO2Dxz2s232hnohSKGTrUXvmbv86WDc4hrVIw5iZ6I0214cgrdgDMHfb2ssOtcvCcEoL6W1yHb8Q1tY7ZpWtlWfKdGdH2e5vpwZJoE9tGRKAcUpOotSf7kU16QRMuiD0ZE+lAZEsLNy76xz2Qgk5uWGrsxPTwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729288554; c=relaxed/simple;
	bh=n3ioAiUYcXSuSr3a2Y9IPXJ8VOp8USax/zvuIJn6MUQ=;
	h=To:Subject:From:Message-Id:Date; b=J5Z9tl4bOyAI9gkHNbmhQPT8fbNALwUf6IPX+QuAFHrKWsShwFrxDQDVRG+hybsG4M0Ch87iqj5+3ofPsiZ3TJWuZ54gK2DNlzQMcoNDWCIaSpO7y6EXVpl/A68UrrC+7eTJbtbB374ondohh9zh2+M2AiPBSf861kxVvE7gKD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R2GvKOG9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R2GvKOG9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B68FFC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729288553;
	bh=n3ioAiUYcXSuSr3a2Y9IPXJ8VOp8USax/zvuIJn6MUQ=;
	h=To:Subject:From:Date:From;
	b=R2GvKOG9Dc3rgPnI9KxBoe5PmTUmkmtzefzttu60gNShNMAxf2zXaUMQR69110wat
	 MOZ4spu3l0cPBU5eU34Bm6/trvu6TYYZ5EwRJDP1ze8vKdg4JNlAUDmSooyquOzHZh
	 nl5TKYrnT9tBB0xT0SPwqETHU7LvBhX9RMdyYkNAjzoggZrLbL9dpRZBwzdt1gTEfY
	 ng8UpuJtx5vgRRpSP11713VIp3Jqp4f9SXwCg8HklHGKS4PSAVLonW0fTtYQ6Fp7N5
	 uE99pMlbQOCVGmoheIMuRNer3JxYNlSrlauRENkmjS87RYklGuYRRftcKlPV+/C6HW
	 RZBWSniECmeBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D78D3F2AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172928855360.1562.14191419075946742141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5837d895c304bad00943dcfa9db04e744a3c7a402292abb3b03383c8fdec6a6
Date: Fri, 18 Oct 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729288553

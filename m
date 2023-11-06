Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA55F2CA9
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 11:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jx80vZ0r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EDE1C433C8
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699269496;
	bh=lIWVVbxP41/QxIFKSTcl6PkGYs1zlxTbuUfcm6e76z0=;
	h=To:Subject:From:Date:From;
	b=jx80vZ0rZ68dA/KbAsiUKxA8+reNNvlv4Q8SJcGhOTSFNPZQpSphLOplEC2ZehWVx
	 M5G9qGQmC4nEpZkFtQrAiS2tHsJcTqdE8DomeZBfKt9RxPoG63Q7pD2mS5Tclbc8zI
	 G1Oo2je7sx45AGE3NKHFqzCctHyBYl42SsKFkFW7nAcg4L/d+CpMCx8jq7bjCtGrJF
	 0mUHdWIihQYywzcglRF7UqgyIm6uX9wVolczQ0OLQKQ0qQQRgX2JTPeAW/+4MyD4uL
	 4S7toskNBq+rm+5RbWi2IaeZb86dxPWC9KqjPE0ChnJ00cUeZflxftb2BntNWvTaxg
	 Hzp7ZOFNzI5zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61CFAC4332F
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 11:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169926949638.10983.2816908864990381606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f617093040bdd0e74143b0e51282eb9824b0f07573aea1ecf94dc807abc10ae4
Date: Mon, 06 Nov 2023 11:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699269496

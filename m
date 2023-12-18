Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC676FA3
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ljhdK9qp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79C9BC433C7
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702879096;
	bh=pp+W5+2DgXIAGFrEAXGNa4ez4+KwLpUTPusIgM1CdCE=;
	h=To:Subject:From:Date:From;
	b=ljhdK9qpp1dk4yXtPvzYD2MA2M8tVocZv9SfXXkpz4UVkzwR4Sve5HuxhenoSIKVy
	 qFUKqert4SaOgYGF1RIE0+K4MrMw8U0FdcpJrCtd04q6cfJvlDX/kNXsRUMqWq/4JG
	 jvSVT6e8JJaz+mwZoSxtQqsCo6uL2Sw/dKyG9yT0hw/zjKGDMvGcnxJn0oa/cRr8oZ
	 zLmxpgcXaqjoBlugWVYk69/8JPeyzu7tVx2mFqaCvajFxgX7QuST5MTxsu7kbv8ORf
	 Udw2V7o2PZ3S7XYOHy8x3pb4z0DN8tO+MfG2u352vhg2Fupq3v3FPjJfjrGltcwol+
	 eHB7J00jrId2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60C01C35274
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170287909638.18295.6194598349282280632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fbfceba17ef5dad1ee27c40f2dfeb4ee2bfa4a24e77caf3be546c130fd16387
Date: Mon, 18 Dec 2023 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702879096

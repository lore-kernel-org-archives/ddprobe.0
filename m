Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F12A6FC6
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 16:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFA7DC433EF
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 16:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684601945;
	bh=j3YbaaGCQl4NwHNbqCVASEzhm7jmNxcDX3K79mZSphw=;
	h=To:Subject:From:Date:From;
	b=ZQb+ZdUd4s5aMpQBbje0hrXvE3rLPUeTZhUQJCpRJUGNDZSVB7D7jbk/PVWrJ/E0v
	 Fxy0F5sueXjAn9vacquGa534RgGg+0yyz3oDMgiqKXvso129/BaBMLgmQoxlUBejHz
	 HsQNCA4hKvjEv3jy2PBsntLY4vH33Pru0iBOmFGVYvZNRyczWvgMu/Rc3QR4c4mp+m
	 twuU7NrWlHpEGK8ECcwX9am5s1Pw5wkqQvnJblO8sOrBrRm0xmEYdcpNjhBJS3ulH3
	 eqKQPAuiVZ+a6tsePmKu3S0NCnIrSNO1CiONN6/FAbvLiE2Sk8V1Jaam2FVPk3RL3L
	 K6h2/bgC5jD/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA52DC77B7A
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 16:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168460194575.5299.17222188528599482625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 963a6c9e97dbc12462b6aa576fae0d252b6e5b35fe2f4bdc16bbf1f43beb07d3
Date: Sat, 20 May 2023 16:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684601945

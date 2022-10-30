Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E03E817D7
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 06:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71B65C433C1
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 06:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667110854;
	bh=+0Gd3bPszJuvbsnnkoWARnj1t5vS1lqWNorInl9Q9c0=;
	h=To:Subject:From:Date:From;
	b=sI6OAH78jSHVQQ0jEmjaAp1hoFXs4a/UdAQTPniluj/OYxnkRyik4YQAEbI43pJsL
	 47cq06UpLM8iPrIXuXHoemBrjxrMtcCVUXOiQyHg1OwE67EYiXCXXLGC8fOFEKrBdt
	 Fs3g3tIG2SPY2GlXexuHKLexRYv/Dvq7nqCvkV0PGT2AnX0jtxKPvNqK2kvNTijpdj
	 Er+B2mjjDaeh0E608QM7fS/MHV+Kc3xDIMPeC0yGAthwBUJEA+E8ZcIcFf5ZQtFiwT
	 BtEC8X5J1B+UhD3RN21N1CDxY6jPPoCJ9xcHkX7h803HcvXeZGQvPo5ZusAzBdCkGl
	 uiQ7BnbFaXCfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56E23C38A02
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 06:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166711085431.4870.3525254337993744672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87a9a44474ddf8d0579af15e138d0c48197027b810aa5de564db8fc998379f63
Date: Sun, 30 Oct 2022 06:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667110854

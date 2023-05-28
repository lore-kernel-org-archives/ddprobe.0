Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9E610E8
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 19:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2AF9C433EF
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 19:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685300945;
	bh=9JBTRVA609+yl/cAhR2u8OOEH8rIGxIcMYsUnGd7e8k=;
	h=To:Subject:From:Date:From;
	b=nhaZ6NM5Su3I4bWdaoZyggFYjQWMRvy/xpuVqYw3LIoTG4AR5dfvBcdqQ4p7X0Joq
	 k4+47FzTmgxvRJ/8CnEWEDTl4d/J4TAMJtEAopm8ObteQaD/vB6ZDNaSHtUlJPNgEX
	 GV8z5PG2VdgqJSSox62OZuGS1XNiOjQcXASpQ2DRWjqNb5STXVPkfiav9zl3ZnSM5+
	 a/R4QEBLIOZXfXGYpSJKGimmeG1IA1cDAIiOfyFm57R6r36aXGOrFBNLRLxpBCtN4K
	 Rnd/xLKHFO9zrCKuF2LrveHbSeb0FTssRIiwZDXKbjNH0CtdXqZUOEBsYHI8JxSIN3
	 JEooVFn8RVlPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF2BBC77B7E
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 19:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168530094577.10049.2624565277658063129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 329deff8b93d1d74de852eccf929f83386c300e189697d4c35fde42b4241e00a
Date: Sun, 28 May 2023 19:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685300945

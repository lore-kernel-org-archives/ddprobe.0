Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4594610ED
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 03:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E87C433D2
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 03:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674618785;
	bh=XKIXbE2ncPX3x/BNdAZ8JavhlP/SEVDserEvoAYF8K8=;
	h=To:Subject:From:Date:From;
	b=jKnMmkgIl96SF5FiTLwdqAzf94j0ZKFveP2xUFbhaXCU+xJJq7XrEcZITlCghrwCo
	 oXIOnm3QFoEbYGdiVftew4fhhpget59bFfAkDpIn284/7XMfeMj1dFPQtfqweY05Ue
	 3sbRSTPD3bqo72BHRZo7eZFdEKAMAF5ahTjqaLNWkpPjRDvQT7wDpJ7EI/c7Pq7YKd
	 4of2BNsqz43tM2SbDdVHAbI0fvET7uyvlSrP9uxbIiCG09QilA5Lg45VqJ3oFn3oQS
	 BPZ3rbi54zT+mg+fi+rg3Pk2EJ1NHx0eBWvMKvRTvPEMFGgoERKZye6zNsNAxWoj9J
	 Tq3kbUx4yDtfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFDABC27C76
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 03:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167461878574.25388.12073307966760694866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 571d3face1b952cd704fac0d3857e38f986705b05325393af5ff20b6316dd18a
Date: Wed, 25 Jan 2023 03:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674618785

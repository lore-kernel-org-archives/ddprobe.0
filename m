Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB3DC3C14
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 15:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7477DC433C1
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665501653;
	bh=qPIciLaiqPoGGx80ZWtMDbIAAgJ4rMZkXG9yWmpWHyw=;
	h=To:Subject:From:Date:From;
	b=E78lgKv5U/ZzB/QNaoEPmR/zI3y08iy04HMUk+vA9jrbbNvoTdcklgEGk8cyygZ+Q
	 t2b3m5cx5OxFckvUkuWuK90eJqvhSnoIjkRkZCWKkueLgML1hc+fiF9PwkB2LcbZr9
	 LvNlfyKBsB85eTSKa+Jhk4bmF46vH5M5+Cp+shiU6O8m+Y7wGmcgVFtds8WDvAX04j
	 np3nVivyvukrLF69Lkv6rcOSNXP4RwLp6veRFh0ON8Tf7eUPmPbNUTDsO6zbq1k4uL
	 StW3/4pvcoEpDKMdLG9nVS6w/fWCkbC+YUepE1qkalIIDA6ThLgXNysBcOWbzBJoIp
	 fJyZ2JQ6CEjEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57285C43219
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 15:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166550165334.6558.3009087696947445308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6df3a1a3ecab6ffa5f780c78871a43b0f0e0a7669b1f717ac90296e5c029b00a
Date: Tue, 11 Oct 2022 15:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665501653

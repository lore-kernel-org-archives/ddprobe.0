Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5B5E1C26
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 23:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D9E6C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 23:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670022054;
	bh=kId9QrJt8wqHCjpTfghrnED41EjvlYaSFYL1ncj/3DM=;
	h=To:Subject:From:Date:From;
	b=Vsh/qoXOSalyhuhPuJzPlMu0kKtAOfvRj4rip9ck7nSfl/jpK9N7GetvBO4m8TWyE
	 w5SA1Q39f0Uu+hQydAwhg6fWLZp0D9FsczyuGK7iBM6vEWeVHaCNBmBG6ni46Xd6WK
	 ktLmtt6ObCy7NKBVX004ZFc+wxt0BfnFS5bm6dMmIksdsIehw5/+zllw+9e2SgStUL
	 /9PKRMhB/8J90pbW0ICjqQbZ4tduedhbPBdcsmNRhxVyVZi813CLbKQkaSK+AGuXtk
	 RBJLrHVg2R7khGqTRX8YB22cMkchOsOKbu7w7JG85lLvZRqx8eM+4vJDF0H7C0ZuCC
	 wfZavzWnnoh4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51528C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 23:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167002205432.16075.2605379688675840285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3952225d6bef964233b7fb063042446b3b163a64d24da8e4ccc9096b5d94178
Date: Fri, 02 Dec 2022 23:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670022054

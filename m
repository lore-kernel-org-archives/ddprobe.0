Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C68CB23A0
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 07:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A72DC433EF
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 07:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671001287;
	bh=rekCjJ5MhB9VZVwUQqyGBnofOi7D5ePlnvHsW5nobpk=;
	h=To:Subject:From:Date:From;
	b=PBc+lvy+8zaj/g+58HTaXiDf+O+zEo9Zp1yCynxzAIiVo35b01i9uFmlOlcGpNu50
	 YUt7XIzBLOzN5ilHmrLf7h2icO+HXFiw2IQPAnfp0twSPUKaweEz9UmrYVGHHVtyrb
	 2piWhTqpmWevajajPu4ofwP3MsP7Y+ucW8cVgtm63u1/ysVmErUd20/zmB5qse0tgG
	 3N+J4CebnWwUKL8dbBzyTCKNkP2k2pbYUgXmc8RHJ8t8CKnwxZcTFK/9VtkyNaVA0t
	 9gkD4vZt8seZ1ql+ruVNAUYPziu9Qqr9VbHj4z+9OCCjF3gMR5i6lo/VFRaWohA+FL
	 pMw8RShyPTaow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FF1DC4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 07:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167100128738.3274.6307161591131552756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a0da55e2f3f20cd9163fe96b186cb7b6fc9816eeb9b2b8c556ccc0fc4785d75
Date: Wed, 14 Dec 2022 07:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671001287

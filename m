Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CB1F17AB1
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 17:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8460C433C7
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 17:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693329848;
	bh=ttz0QGE49mKe7A78dUgP3I7zUhQBCTiyH5BUXaLnsC8=;
	h=To:Subject:From:Date:From;
	b=RrgVKMFKrtkL1GkJ53p1Y5dkwhYqMu0CxL+ICf4SbLQrcdqbVv+AmEW+X6ws/ZBgs
	 h92rcd1M2Jk7+SZs+7aoK8kXg+haKWffe0IlW7vxejUHzLExO3EAlB9kl2/prDQz/D
	 qldEYza26zR3bGoTCobNfeYsEQy01TAF6OfPoN2HaJ3EQMoW7UV/undj1VtOriqEwX
	 4RCJEduH0uwMeDOGDgz5HKtxFhYX/hJtezqB35D6HDJceUY3Z1k1jQl9Flvtn4fgUv
	 +EmmA5C9v3Zqzdh1Kn7CDaK4sYn2yW39FksI1MbSMTp4ay2+y0Tcj2MRYtNMQhTDSQ
	 sLjHvcIPgCxrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6DB4C6FA8F
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 17:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169332984867.2136.17829119312042729313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 526811c9b1e6c24d597abcfe8cb4281873e9da198805e4e2cff66643173fc01d
Date: Tue, 29 Aug 2023 17:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693329848

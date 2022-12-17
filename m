Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD737373
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 01:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7855EC433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 01:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671240087;
	bh=gCtaaPEALtIi6on6sg4vN35PiqhOXpTf7zAiBBakOIo=;
	h=To:Subject:From:Date:From;
	b=HWH5Wo/BWtEM23qfe0WVZgEPWifDO9W93Q5+jL3IlTFKPXScYApL0Z7U9B7J/xUvJ
	 dhiaTAyxNmP9XUCW/SCh5owCJWRulU8rnzXHvnEN0a/ilHSMKWTuew1U4f6jm0c6gx
	 S60qFUcrCz/CkQ9koxg5gTTk+e3NfyBozAd+jUNFXzavQnji9buQ8UdfoQbsX4uD/L
	 GCFT8B8yJaX7AE67iioY3aAYGZdxQXlYfQ5putrnTJl2531H3RLoslaE96c4MXctDg
	 JVP+qKSlVoyTWzlA96X3u96JNaqS7hGlkSrZdLJgBc1it+vbZO1dFZPajY02wb7jel
	 w2PbHJoC2c/rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60E19C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 01:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167124008738.2726.13104831957548774683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 812524a37bc7970f786db100d8176ee46c544c66f0b0c17e522fd38df767ff1a
Date: Sat, 17 Dec 2022 01:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671240087

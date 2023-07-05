Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A17820E0
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 13:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6172C433C7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 13:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688564228;
	bh=UbC+u440pCSyfyenSsu8bhHSb0oocPo7u2ls9sOCgsI=;
	h=To:Subject:From:Date:From;
	b=GH2CWeZXtI/WcwkPpYXeitsC9wlxPEPo4AgQCdqVVD5DMutov0qdHn/sXgFXsfDU4
	 5hDPn4dAXxRZeFPRRhn4wmge513PR16B0X8Fbko2edFvCQT+rop78Uwy0OQHbNnLRo
	 0uAzK3VhPv3BIKBSB7d49GiUWom9tRR2J9uQgelDTzE+f9CPDIVYLwBafYobKms1aW
	 yuhG3z4WVQht0glm0Oh4ulTf3hL//OVnSTlQ6+jukYUeV5hSI/dTXskDg3uvcYgRvJ
	 0s+FrHEPu8uvrpxFrFdlO6Nt2C0w3n4RSvbpn9jOjjFYgU48voxygPgR7g2L9kVWsY
	 un0znZfNGJstw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC6EEB64DA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 13:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168856422870.32246.9310879932956039154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c45716d02eaa15856cbb9ac5d43831ef87ab914c07be4ad2b299f2e97e825150
Date: Wed, 05 Jul 2023 13:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688564228

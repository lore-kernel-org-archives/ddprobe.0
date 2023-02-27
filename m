Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268CD6AB3
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 13:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C1AC433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 13:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677504965;
	bh=vtYzdwFawsXaKBUY+li5xyAyCSmCWkxd1Ejpa9NKLmA=;
	h=To:Subject:From:Date:From;
	b=JvRYSqj+M4jQXXSPlH8pMDDIvwn8J7nHX3DY5lAp1EbupsJ5MTZlE/xOtQZ4kdvV5
	 5rx1bZoJDTqW61/y2BqUtSPo4Fg3NdX9TfWnU2+IYVHqQEapXV+rBdvtDPwA0QWMg3
	 EuGo/oNTRH2KQ5YqcV42TwOmq1fpUFriD84d1BJLSkhNOZSfXvl2uwQg4/QxnDXzXG
	 7q9pah4KIyntDBLaUGxgr2NY6/TxXpKACb/D9nfoR80XLZMdvxPE8eg72m6KakGnX4
	 IzzBku4fRHn+eE272gaqA+OyvJd8p88JCUnRRcIT3ogFqrnmVzfl9rjWc03OrsUjNQ
	 Q74EDZZJUheiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB772C64ED6
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 13:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167750496575.24887.11619869018309849977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5d954bc36c5328ca4f00cf4d399456b15e5648416e1e4299fbdd453fb3f5542
Date: Mon, 27 Feb 2023 13:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677504965

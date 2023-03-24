Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 859F62771F
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 22:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 31700C433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 22:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679698266;
	bh=PejHJdZ9xywsR+rubF1rpCBXV3wAgvezonvPCugGCZA=;
	h=To:Subject:From:Date:From;
	b=IFRPYMGRsNWp4yIyT22byi0C9vHuzxlk/fwUiJakb2f/jfWKYpgy/tcEfym0brsMB
	 Rieg6eQHhhZN1x0cjgrbOFFk0/uiI4pe/xL6kXueiz8SDD8X7Z7GNV6oSfoUEg1bqr
	 ik+hF+xa+sNlTk/Ar4u4vzB1rx8kS5f1Vu9GaAkqsqn2hmIuMKStEI4XWVPTwS6ZBu
	 cg0vxE6x02beoRiZlwI177pNPAcMY5lX745ZPMS0otFY0oGeQN3/MJHt6Z5bbqEBb5
	 N1GnxDOHDwUfkYViwdH6gkwDOVVmK5Ddh7lTtaTQQ5L/SFa4KgOwnjN0SkCpva/mdk
	 pemhoCnkdJPiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A9EAC6FD1C
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 22:51:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167969826599.8454.12800376817929945949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4a36323fa36640904cd9da357f544c578537ed43d2a029193123078a11fa533
Date: Fri, 24 Mar 2023 22:51:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679698265

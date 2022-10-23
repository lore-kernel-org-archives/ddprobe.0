Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA1881362
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AC94C433C1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666542653;
	bh=jbEc4EdGV6pjabn/RD34NOD67LM8LvtRTd01jlykJVA=;
	h=To:Subject:From:Date:From;
	b=ikjLrsMcdUmmBoofYfTD5y+bF/AtxtrMSbOFnoA9rDM9/ZTWcPmg4rSyVDIjvAlS8
	 IeEMrnT0rYQBTT61R2NolWMOpSCjgCFdv6Ujpd4nt8zj1hPjCnZaTmtNEMuoqPHWEa
	 eQycd3pYuvyK3+UX19tst92+/CsRNpPJD9M0dnOLsKD0w7rayqsRs72VH/Xizb/suQ
	 GzPSCI4ztQbisOAPV3kGdQVNqmQTmcdP9xnivlbwkBBWQ2SzD7+N0TiERnDDg4zUbM
	 a4WU5XPTHw+wkE650XGkXkhUZ7gL1b3FYM0Kd+AMmqxvDNuyAUFlbzdB1Ye0q//beg
	 StGrPzuKEG9nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ADE2ECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166654265333.9610.7683721360819072842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caae9c973e19c5b9c8512651c4a07eff5cc3fe82aa204968e2858ecfd830ee4a
Date: Sun, 23 Oct 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666542653

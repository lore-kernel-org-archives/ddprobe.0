Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC3AF39E
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 07:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 716B6C433C1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666509653;
	bh=r5MYgTpOYqtuNNrP/UhUbn4Nw7GQfLvAhe4z3hPiA4U=;
	h=To:Subject:From:Date:From;
	b=L43T2ggx5gMH9F685rd99hEwPObY+p10CRtxq2ewFPhKiMqccHQMxPrNScyKttgfG
	 Cyze9aV1U5nfPYfX40F4aPGnMjP7Gw56JHpAeWVmCGCnbHAfuQ0ohpznrAHNQDsBrT
	 4HZDoacvr08XN4H7LrgdNB0sUfgGUw+yFztLRcCMJPAs7X64I6gc2cM2KCP/v45kOa
	 CEI/z0PjLxwcgOW1LhAoPlR+n9TLDthFzI75ii+ddonTZjF3ptAlnuhhjkpflbS0Qo
	 PLNJ2zYvxgTrbE/5jmgdf8OCAUPvrTjN9qtdzp0gnZWcZXgg7GseXb/F+ou0Uyohhr
	 qOmzm5EOuwxLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54B10C433FE
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166650965333.959.16740863180768307184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0a0be78921c4e383b213daf58da06330048262a88619826fcf89619f737d18f
Date: Sun, 23 Oct 2022 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666509653

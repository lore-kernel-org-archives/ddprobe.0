Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C57E028FA
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 21:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71072C433D6
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 21:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668203454;
	bh=JpLnffdhQKU8q+mLLyDg5Y+5By7qoPasosSBfkPzHTs=;
	h=To:Subject:From:Date:From;
	b=QezPLOYFH2TFF9GCMqcmPTyUDPE+RMiHGxODnIwJ7NmvfzxpTBYGuFAvXBS340M+0
	 cMlywdEP7/9RsrQYnKa+FHC4XQgCBUkbxVlWwwZnr1sXpeP3GCDpAvIYYiDnfroOc2
	 zGodvH/YWTFntu9npphb51T1Fgm29PDLAs3rh/2wYByIaw+r40Fu2PA3dt1WBCWCM+
	 0LVCpiaRK+akiDFxWZH50yvr2Q/VRZ51Hq/GwM4T/kyWRbdeHcTXRp0ozBxBCp1XT9
	 nxPkvP0D/29fW/cnloZxCbOxXe/5YN1bpv1MM6mg3IfuSaPJ/BeFCxgfPkP1uXiXAd
	 LoyogABv93eWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51C2AC433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 21:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166820345432.4377.1493121430351593925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6fc0ec58f192bfe9f9c4235c7e453d33a3da25a2ef2e23e228b34330e2f5c78
Date: Fri, 11 Nov 2022 21:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668203454

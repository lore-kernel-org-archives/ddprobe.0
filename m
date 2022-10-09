Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA24B53B7
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 18:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 692FDC433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665338453;
	bh=dd8DR5hx0T/nNaEl+mBTWZe8txRMflq6Zc2o4Bg26KY=;
	h=To:Subject:From:Date:From;
	b=a//2suF24as2ASVR+WoKW7sTtDGbdwW/5reRQfGsY/lGjjTprTQNVoXtLx28WqyFp
	 FGzGbLs623bf81iVeR8Whpnq5+YmKCvn1qpxvBjP8RIkH/5LxXWMWDZ5VTD4KtvfFn
	 xwCs2j25O4A3zc0hnvPwDCSVI0U7SChS90l8f8KgLQitWhAAdvCjFG9OuvNCP45Q1J
	 RnhZ1/QRtP7aXPFs0Ohxfq7WXh1IeoHxQ6lulgCM+RoN+e85+s/IeUutFlWeaqWD2l
	 13H3AGMXgXb3oz80Ix0/F/EZwDS5gGPeYMnSDAVCiH4ro06yau1vBoleAYHgqBszVt
	 hAJef2pO/4IFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 549B5C433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 18:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166533845333.12585.12489627644289229876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fad991773b53437204a1147ef9d53f40c28482d9b5f156b865c8f432da56f48
Date: Sun, 09 Oct 2022 18:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665338453

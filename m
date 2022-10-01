Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBF9A1FBA
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 23:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CF73C433C1
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664668253;
	bh=uZLi7mWH7PV9rV68yb3BUANat+5ex8jIIGtApXceQ1E=;
	h=To:Subject:From:Date:From;
	b=fM+LK6QRG9scTMaPL2udSFAT9aC0Ty7RSsPC8AMSHeUuraZo8C5TeaPQKknsCfwu4
	 9JAwaw0UMZdIEFzeXLvAt7Dp5C31Cglnn418cn/7SAZFvahX0KD/SPFDJI+pNXdvBc
	 RQzcczGr+U05yK3nv+zn0G2S1pbyig1PL/emtb7wujECMEctdDcD6XVWrJtc7JUrww
	 MamMF3sH836k3x9gOg0Vob4xP6HxJuaIWv+gSXW50ReqSh2NyJYhoLt1i5TYtmheH2
	 KOxvNEAfUG7aDbTCj7USk5seRtMv+7k/eRQBB21EcxlRUBqLWEogOWQzNvCcytSJpT
	 UTGn2ZkHshTGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50A4FC433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 23:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166466825332.13384.8089390512379447831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ed485108b255ee6474a02192acb85978ead8244e0559548091b6c7c37c29f81
Date: Sat, 01 Oct 2022 23:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664668253

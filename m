Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7B813202
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 13:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AC18C433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664544653;
	bh=0eqzBqTO/YZqcqE5yTvVN6+ckMX0aupaQN22+VOLjjI=;
	h=To:Subject:From:Date:From;
	b=rksMXWV60rV/TCvy0/plAL8PZuHmYeSiIb3BzbI23lIYScr0W9HCcpwpNRWmIHKSt
	 wElTmDRa/vo9xNFtmh6H6qOhaBdqIt4+W1oa396z3mVpTtX4XWxrDl4ekHMDTKWQkN
	 AfqXw3OB8QFYeND4VxjScRCxNAO+xeLy/5SOcpuCNtCutLsrRrFoprmLT5+FNOQDEX
	 ubeK7mWenwXovogCFrFJeruWHJX5Rw+UmkZPJ6l4wDTGrrUSYHKcSMV5TbQrv5e2Od
	 WX0wyns1moppIcWIuaY5a2fgQss3QWGf/aebqTOhxmbZ3Qz/WXGCvGKARm4UzXsI9A
	 lkIQX12g1aQ2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EE8EC433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 13:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166454465331.11307.526005234638651394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 661b664fdd46c816734dd9cb0c950ada9288689d83d11f37abe17049d4292cb4
Date: Fri, 30 Sep 2022 13:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664544653

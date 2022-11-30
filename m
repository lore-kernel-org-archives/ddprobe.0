Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3CE964C
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 08:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B4AEC433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 08:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669797654;
	bh=gnJmiUW/+v4dwnTGo7RK6MWa5YD9J30Dc434t1848hs=;
	h=To:Subject:From:Date:From;
	b=p9RQZfMDfmtM2yICVH5HfqTc2eHJ0+CVsAQBSnkIgexL55VmSMNaWDP8zklN0NQDp
	 9CmJHqU/n3RnYpUparlgrHhheIeHoWxT5n41DaHTwuFhVfzywbCfh6qVIsfIGfLoTu
	 vOsK+FCsWKBwb4IKPg8Nc/+abCFHPbrBy5IMLS9AJcYMzgLUbNVkRsZhZhDsJImdjT
	 C5b4UnCUhi3zXgXLH4epzFwAsnATWQy7HZ35+GtidGrdOfHo+0oVqLdMVqRC/p7ccI
	 L6VD4mc6eNYpAfTrz771go86beiRwe3sebut1zRX2GgkSU1aCNXvLMZB1DjoHPR83v
	 GGF81ZK6skW9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53A8FC433FE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 08:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166979765433.29495.6542540951809130088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fa7ed13431d757055acc8b8893cd471ecd02cb56c00a954c770ef793bed3976
Date: Wed, 30 Nov 2022 08:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669797654

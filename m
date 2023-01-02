Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA0257C
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 10:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84FEAC433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 10:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672653687;
	bh=9oTfQHoJOI2oJfWFxej6FDXdLJZXSjGrh53iFf7kfek=;
	h=To:Subject:From:Date:From;
	b=B7skhWdntqjf2qrsWATbQAwJ3hm/TzvS+OrHPj53YFl6ufATVQad2YMHBD5AzWh0M
	 X0ObaHqYz5Zu/OYNG2R8ixfTa8aCih4RGJHlJnuSNhHw1Kfq7mLyGYiM8xCftf3w5c
	 EXpMlJfBsrS/aWJZ70gaQXyTgdvvu+KKyfHI4jFmsa38ApTplp3iQGpLQbWNboufVY
	 23Gf2UthJD+wkMWefTe5FlSjS36siNfO5qXjcIxwVkxGhQ8YwwgSNNLdctp2DKCbUM
	 KP0j9CoelN0UWDnLEpG94UtARBzdvpkAlmyWclmcs+O52y1GIeyd4jpS3cFrDO+SDj
	 4ydH9KFLiIXCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68402C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 10:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167265368741.10558.4030361164177502315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cba4414602ca842c10ad57ae06b74e5356b31cb7874740901f4844240132724
Date: Mon, 02 Jan 2023 10:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672653687

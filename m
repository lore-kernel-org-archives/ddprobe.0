Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A0FC7B
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 10:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0ABEAC433D2
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 10:46:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681641966;
	bh=kTy54laEItCIstVLsW2EBIyHEl/9f9OEYXzqlPMHhVY=;
	h=To:Subject:From:Date:From;
	b=LWlMqrY3c2ZZAzUmwA15W+GHsjZ0K//KrRpHMQGzRRQIMN5DsT51NuQhmwBVoCXcZ
	 8Df3n3ejs/aiSvTmC2OdpQkL+BraOoUjp5cEjU0MzVXbemaXbFqQylA/G6OfKTzHKs
	 vEwuh5x8mGbmeSdeWlIhiVd1yTFQOT/V+V1NO0JG+pR5ygJExwmfQ7A+O2XX1RwyaR
	 gRs787ZJhx7eddfeGxdH20f+kIg1Nh933Ef1+oa/5ndCtCh/mtpJLMHZGZhIplazqY
	 /ybceO52dj8edW1e92EG4caB8jhlov/EaQnuQbM/qiSqlsc2JSCIo1BZVgevwRx08C
	 w1wF/tKCHwgmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5285C77B76
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 10:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168164196576.8251.6436371100354901864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e331f49289f79be768788c44253c1e2c67ad20261962eddca6ebc971b581d415
Date: Sun, 16 Apr 2023 10:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681641965

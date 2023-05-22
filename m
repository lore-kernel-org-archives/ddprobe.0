Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30145EA4
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 03:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DACBEC433D2
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 03:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684725185;
	bh=P0jrne7AGB32YM+EFqaS58JcBrc8mBJLWuAbtS3loy4=;
	h=To:Subject:From:Date:From;
	b=Mp+MbYrW2DVN1EmyrYexAeyunc/eSfQJ9ZrDXy8+POvrRWfyt0XgwB6940D+JJDqv
	 T3/b8WRaqoK+y/HIYA6UlSRCK4EzfvwhZHX5Re8rVvSrwnL20qhpDk592HtmhX+Xgz
	 xXQiXtjlV3fBPW5FM6m4Bmq0udcGaBRL8NVKwC8/VY+8ph1AiElyoWun8jFDXHTvDx
	 wEnmvjus1PNODyCf2jSXabfS1g2NmppBQqGCwsTAdRBpyGLydGZu1803Gb/DxvpLrL
	 tv9bCFd5FD+QUOEvibwGsG2HIiDW2LwPZpj8BTBR4H3ka3qqfmCScgI9FX9XK8YkuF
	 +Yrauaz/hB+1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE9A3C7EE29
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 03:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168472518577.11531.10605325842567980641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f2b5be9b8140c62efa4d064b54e07569d7e85a183997bed5468d2b0f80e0d2a
Date: Mon, 22 May 2023 03:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684725185

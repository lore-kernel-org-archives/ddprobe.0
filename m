Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64A997F
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 01:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4862C433C7
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 01:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691027528;
	bh=YqlJ6oyRxDS/rYqkTlogmoXWT2VJ1ux4VnkiNmWT9Co=;
	h=To:Subject:From:Date:From;
	b=klSbvNR78g5nf631BYYVcSIDBUHH3LNG8yomHmzsHpHJUUZeOhz25l36/4HjDdOjc
	 61KkxSCglwFZb0ziwET+NApzuiTYIXXKww9BVoJpss0HI1WbP8arG20hi6m0Jc3E+u
	 pB5WyZ7eEjA5c+mx+qMkW+KDfggPbtm0+noqvS1UO2NNZA4qY3j1oP6hw8R+nYG9Go
	 KLuaOv3amTApfE5Mb26g9DppK3YSiQD6FKyfARk+F1YQ6wOx4RizetvS7zZz2HUSYk
	 WXThmkN73AwtfdGZ043VMU4Ametgw12Vny1s+imtxHPY/DMAsKmGeFplbsqlzSLJSB
	 gfcJG4G4GBUuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC532C001DE
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 01:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169102752874.11540.12191269004086114437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a274f70483d59e7a88ace539ad417e63b8b41f743a9a63f8789985b62cf0283
Date: Thu, 03 Aug 2023 01:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691027528

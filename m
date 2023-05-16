Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3552334CD4
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 16:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE012C433EF
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 16:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684254785;
	bh=SykvLlMN7F0jIr/1702w+AreZnT/iKFm/xUKCEGNJYc=;
	h=To:Subject:From:Date:From;
	b=MldH2KDma5v1gOc9yH4QpSaB1Am50e554hZulfJ81nu1gfGTl5h9TZw7XbIY3VACI
	 wPaAjnxTLKd0i6mP70zhziWy9jTf0KqJqLiD1i4VuKo83i01WhddHO9vAV6wcJnSRv
	 g8j48xaNWY4G6680WOfAvBN69imlvUGlLBZC2EZ6vtmk7m2GMTiFl6m7QFQMzP/M9u
	 pcxxDI891WdBtXS5wNQPM+X/ylwX+HuykBbChiHfTnrOGw0SCopjotGLhLbLxtYJsX
	 P4b/7Z2M787AQaxxPlCYpDklQsB0oyfgRVifoN1N4QiZXrngZWm43EHMZ2doWRaFcP
	 8tuKq+u8fj8SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6C14C7EE25
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 16:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168425478579.31236.12925231322341731282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8e90d2800c687412cb586ae3ea68b231a5591fe343ee32da831c1ec09704368
Date: Tue, 16 May 2023 16:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684254785

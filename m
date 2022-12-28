Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160991C10
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 19:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E912C433D2
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 19:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672255887;
	bh=IA9Pp7szvQ0tN5fGCe1Sk9Tm7Ai92b6Mzdqir+XhaUY=;
	h=To:Subject:From:Date:From;
	b=laFtdavWcR38zzeZ5Mbq8eGwm/rmU+Cvoe//qxFkIZIBkIMmohTcewDIKwH4IGrAH
	 I04k13cHtZZHUJLtg8WM1N5YzPSAyDzAD9idw0dx39BW3idOzGDn/jGPjLaVoYztbN
	 EUrvwHL7Wab5r7fba+odAKwJLjYON3+FDLDMYTjJqZMcwwgobxQ0WYdXKjiUCSBVxJ
	 vel1kIhz1C70xjkn6p+FuBJ0SLBVt/pBJgdexoj/sPW3Lvy5vXZDZzHItu30kcgYRa
	 ar5wzkzE3bFPn9OseTH+mF0FVNLix40sCFEZxonI9qv2JqDs45HAuIOIwT+c3zbLEQ
	 9q46MDoukQS6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D81BC4332F
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 19:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167225588748.25219.10628377313433953003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98cce16309a878f1988664704f62a60c891272e800a156e251fcb8c59756d79c
Date: Wed, 28 Dec 2022 19:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672255887

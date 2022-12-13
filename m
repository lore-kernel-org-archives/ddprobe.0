Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2B757B
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 05:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BB4EC433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 05:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670910687;
	bh=mE2WElTjo4ihDigUsan6qV0d8OraBBg0CkIK2DbP4JI=;
	h=To:Subject:From:Date:From;
	b=FzNtsG8BOKcX3jM+UU9mmjfmM4MSZFq7WebKQ0V1I3HI06YX3pD+8XHgXaveAlhk3
	 Ub1RLFdzLdQZf7uqjhH4XyycWiEF8c/DY6u00NPqExSGOC72ABl9/JJdTaqHsFqp6w
	 zTkSmN8WmnP6vkava8JvvFbbEcFEnkyK8kKn4tVc9EJjb+wRolOYkeDLtWYjBQMUyb
	 vOwQo24wN0JcU8v+zlXpP+EyvsJokqhowiIjqJnX55T6/lXFLgTI+x05fCsLC+HIlG
	 1Hmzf+XtEwZlVoxNHwH4rfP4pyKCKTXcZj/ueisPPUEN7HcatO4RjB+azOZ2F7ETEE
	 dVp6jaNXTafrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 646EAC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 05:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167091068740.21954.2192244031844528215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 339d84761353387268245d6b975b7dcbcdfd75ee83382517fe6bd3172cfd4676
Date: Tue, 13 Dec 2022 05:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670910687

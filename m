Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D73393209
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 23:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 803D8C433C1
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 23:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661382052;
	bh=0K8lSStLlQ9Rk7Ev3IeQ5GLmc2mmMTChCJmrceo/hgY=;
	h=To:Subject:From:Date:From;
	b=o+ZzrvB70GhQMMHKkVIUhH4iZeDRRqt75arMkXapn0aWpwfKOkoRsPidTc32paV76
	 o8YZIVkchAnfatnx1YyaENLeAWqFJ+0SGzxS0v1p+dPiLwHuLyeSBd0j1PaFnAcOjR
	 tVF3KBXP0Na3B4QCGooDyVVoIBdYoY4a9MJqe1V90Yt0jRdLS2jUL+Dc+AijigqOpe
	 sgz6EmqumFGaFKaAEpsjjTEJYQX6SRR7forCMGHGJ+JElxtIL7fdNjisSdImSSxhLi
	 KkB6tQOzcnqN10sH2FyggfvB/Et/yFB9q/X4w2cwiT+DCfxtsqbhG2yKjcVFuQLSXO
	 3rH3CpTOOmWRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55A97C04AA5
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 23:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166138205233.21372.9014982642511670761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74dcf61a973591cc7120080a11bb826363e9bc2c02617ecf4190143d4866d365
Date: Wed, 24 Aug 2022 23:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661382052

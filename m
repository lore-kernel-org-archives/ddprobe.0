Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD068804
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 12:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BE09C433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661947253;
	bh=thifxB/FIfFC+bOTHOxuXSCbW9EJCktKfjfg5nrfMC0=;
	h=To:Subject:From:Date:From;
	b=XLvF8pPPiVZj6bkpzQKkKpml0o5hRQn3Q2BlyAjbE4vLsCeQghU2y95D0RsF9vygY
	 p6rLICZA+o36EZAEpiSK/4268cjoQByhbtrwWHmSDbQDAxUhRH/RAU3pzM43A/78sP
	 G7dqMq2vFLZjax9CWss5lgIbSY1sQHQPJKET8N+WfM0TnDkJbaMvTe9UCt9+XN7jfZ
	 v2nmzcYHgndTojc+XQHYzR3LmEQh6UpDopHepwKiJ4AsNCUOkxonB54mtOlciXn/F3
	 pWF5XEjJcc7g4WzkfVsC+avxlzCzRQ0SYIbpGC1dZXSuv+H+ct1QgME40D+tm0W7qX
	 ut2Xd1G10BlYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51015ECAAD1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 12:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166194725332.3318.7605276970532712956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86b3dd175478df280550aff677e2aeed63721000b9e8783ae0b9db837c8fc53d
Date: Wed, 31 Aug 2022 12:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661947253

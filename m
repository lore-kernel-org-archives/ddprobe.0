Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD9CC5667
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 18:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CA09C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 18:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672683087;
	bh=TGYKCuF6JEMuuPOJZIZCqZmd3btiuPvrBwqDGCnzmic=;
	h=To:Subject:From:Date:From;
	b=bG1dVQlVcir1WfrMD9q+yUHp4tiDawfnNp30vgD9WXjdNStLGKP+POoUznrm1WPJo
	 59fyBOvFYo2kuYaj3k7bbiyszrK8AOmyBJa3v7obSwaB9eiq39Hrh+2y1jvegeoRHZ
	 sbKhNj5/GDD5MTi0nbybe3a5TdcddcVLQGmBQNudvVtqgsRCdkqWbshqHlveOxk1m7
	 rbMRsuCoP5kuSST726u8ojhUBd+OKhzFqLGcQ0o92kcFSxD5jsqLr8lrcKIa8z5Aig
	 7G3kTpWHADRyULDrU4pnfekQXvva/XyWd9viQTEoxyfTjQFcmDeIOQMf3rETx4OWe7
	 DE6Fxsl/0WZhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63704C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 18:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167268308740.21871.5743468267632106290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75552d1da797c3985560f2e9863bb0a9b49c32f9ad3fc70b8533c21e2068975d
Date: Mon, 02 Jan 2023 18:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672683087

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 630C68488
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 23:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF881C433C8
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 23:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694387048;
	bh=fKp4eAEbjxn90UzxE2o0cZh6DSovzlpUI9nc6WQ7Qec=;
	h=To:Subject:From:Date:From;
	b=Ls7SjHkF7iaIU0ktNpTASTUmGvSKGsGWQ76K6DxflNPgC+GI0z5kPNceeO1A1g3Tq
	 cX+gCaRokyVUXNv/T3r+p9ksLNaIWDGLK+CZ7dDSiPPlWY8e22fO5SlovAtRZTqxw+
	 zMGR+S0g65HUWKGx3nktUzFAvjvWo9PiuTD5A0UN6LqQQxYMj8NbmU6DhPWU55lcpt
	 yvVbBhEKhpqShG8U4UoqU3s6jT6s/XtW0idSq/Yxxc82t6lTZxIAwJ2B+GsoZ/v8dR
	 bboGC76Be3CDPnz9fY5s1fuzNb7hjGLtJqeVwK9mlr+dweGQadIkWBtWbDgrzFTlRB
	 XfftknGhTaqVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B31F8EE49A4
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 23:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169438704869.23850.10143524556041506536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 817efaeff3affffb5389aad57c1ff90ca11316161b168aac15a9d1dd0295c6c7
Date: Sun, 10 Sep 2023 23:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694387048

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F071C2C5
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 15:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF36DC433C8
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 15:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687189328;
	bh=ZSJkOVU8aiAO+pzfRbUxNdreQF2CoC39YxVZ4ckGQrU=;
	h=To:Subject:From:Date:From;
	b=D5WE4G6f6FM0n99N3eMzjJgeNQChS0dzz0nWruSQPdG76wP2cuM3jJPpS8JhvD9qT
	 aHqi4sYg0A19NBrUToKdK/ipVsUNvZ5e+liimqicooFhzvjnBz8yPg1eC6oIPxOxaI
	 yiotkC8lRMi0lJC+FWsIdlf7ZXVpqyxpIkW1UKygO8shbcvL2wz949787jSMjEYWci
	 FAcsq2a5BBO2igkzGmv5CqTIIiluoWjEPWet7SRtGaH5MLzRdapmbvxxNH3wCZZv/E
	 nQ/TbpwiGINUILcc/5d2Kn74CGm59eBBsBLfaBnXtAkYMZLOF7Jtef8IZ/nUm1D2Qb
	 9hJJ9+9jh+2cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBBB3EB64D9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 15:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168718932876.13393.1156576060564169346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2b5d3d848e2ba256852752e305ddcd18be9a4fc0a0e6098e3dd9deeeaa4e184
Date: Mon, 19 Jun 2023 15:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687189328

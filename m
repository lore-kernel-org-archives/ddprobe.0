Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7A517F
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 04:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71F07C433C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662955253;
	bh=qH+caCAmRG9JcpXItF9vepVkXK9waDQSInaTRhm7w2Y=;
	h=To:Subject:From:Date:From;
	b=rTlhnUq1NMfnKD8rzj41uvDYn1LGqF09J8oEsE+vIjIaKc1K9AHSWUX83JK9+TgSY
	 QFEEAznv7K7ixmSJPO1PeF3FAMyx4Dz3PP6LJgdR7EQdQGLHV9ju+SYUTkjONSrvpA
	 Pw9aM9wzVhxaviVxhbGQrFBQQLlqvvNpErJACf+pmGigunOIGu10rhvYFEqsCU3gRe
	 P22DqLQn2Cs9Kj3WQc1PCeIU0OPrtmCXlBCme2nVczY96QvRE8RO6Z+Zz/uabX5Hny
	 LGRCSGq0dnVA6Y31X8HoutEdU9Qn+HY2qRHlqEy/1glkPrLfCC7XrBpiZ2FqIfRhJG
	 91fCpMGjtmXuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52AB9ECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 04:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166295525332.13766.11505217502552976979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a660fc56854433f3867a73fab817c69af94f0162f7d65e49ae50939747cb9e7
Date: Mon, 12 Sep 2022 04:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662955253

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB03191
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 03:01:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DACC2C433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 03:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672542087;
	bh=RXt8oE/TaHgnbhIS28elNj3CTpdqEk9Y0pN5odXkx6U=;
	h=To:Subject:From:Date:From;
	b=JsKtGEXPV/acmpFYrjxvp+ybG+8eons9MO902S2hTjmvsQobXruKk861C/WgBBdEp
	 9rXoCOGzl56ESRyFX69Ruk82ATJzU3Abldx9pw5SZ02t97awZ5lHMx+tGrGJY5Hx+a
	 v2l6omFZoMGetN4FXUvSsmAGpWOGvmGkwqm+iCTKKwZtevkaF8zAi2eF0SygIYKqtZ
	 gtrTga0Lx5VFDNExTSyk9yRoaBpHhPpFAznbKomZUTaT5KQlrs7QC+BM9pQg6hlPqe
	 hVinPkGv7dLrmpjDRiOKBs/jdtkedneA++F/9643Kr9wJi1lav0+PAWD7tGoEwLmtx
	 a8AVaffoI6GFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4505C4332F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 03:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167254208765.8504.8783419703577522352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9941585940f093537f7ffeb84137caedc001678a6fe23761b0ec60ed2e57afb4
Date: Sun, 01 Jan 2023 03:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672542087

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430061E513
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 13:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9191C433C0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 13:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687439588;
	bh=oy9bpapXfDWNFuGe/qRZwwWZlr/KBeKX/rFPSzcuBTk=;
	h=To:Subject:From:Date:From;
	b=s5RP7gVF5VSWLXChjiisr6i7GCGHwIZIl80yuFeJ9eUi11Voj2qNqZZDzxKAQc1VC
	 5LR1VrNTkxx0ZLVmhwFtQmALJuD2WOfV4it/+/tT2fRWJIiO+LoMeELCiR6xO8gG19
	 U9XoeXeaWAfP71DOywZzu5TsheEYntKPZvWpwrRsKfLePHs5dBbbQloCDev274pBHd
	 NVHx7F0HgBz+cCaZO7srIN4kxGz3d9JWZSysov0o52MUYOHgfSAJgowdbyfpKAuGLr
	 WyJSRuTS3vUVnoBYg9jMbrSAhdoT1p7KiUATUiSQrBBX0OxBIg16UUjxN9UlGxQsHb
	 Lr2sIuwEUeGVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8542EB64DA
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 13:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168743958874.32096.886909868525863731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f60da103f2c397d3e400e4de05c3eef0dad0577c321327bf2f1b281d26a70e2b
Date: Thu, 22 Jun 2023 13:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687439588

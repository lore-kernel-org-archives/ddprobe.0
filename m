Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE3AD7C
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 00:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B825C433D6
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 00:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668473454;
	bh=idh+XX6+6tl6Ert5e1zRIaKiTeraJIRRbAQpoBJMT80=;
	h=To:Subject:From:Date:From;
	b=KxCv+kITFU47O/B35GKnJXy9hJ7fcnubuDq14AVISc8dOlUX8OvUDufPZIAig8zHs
	 vNGjsVmEzC7xRom2cig8Vdaf7N4GZgYjKum9RJ1e+MC2I4WNM2+wOaxfmb0qqv93z4
	 z0/ik3ikrZGjXEefF0H5q4V5eafS+TE4Xu5dUfiAVOCLCArlJUbeTgm4akrX/0kSp3
	 zK4+xj963IlggDe3TMKau+9SuC5uOp7GlRH0X7dvf5n99U++NV/ZjQwuda3HFtijkY
	 BgvfM2TU0TKb6vUOZ9MbTodW2nilyIQjGKS9SyqqUMMz1zQwRULvQB39V0oi54Aig3
	 smyXTGt43Slfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52A38C4332F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 00:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166847345433.31120.8072839305375107991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b05d323803f22f1439341adec2c28d241b6711450167ad670c16f14563382924
Date: Tue, 15 Nov 2022 00:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668473454

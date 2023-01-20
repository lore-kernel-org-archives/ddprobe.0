Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390AB256E
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 22:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E96C433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 22:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674253925;
	bh=yW1g9rhM/C/59QjCfSitF97fC1QLMw07ez01esRSUhQ=;
	h=To:Subject:From:Date:From;
	b=hwieY6o3bRgfx8xgOdMmbBStZ6So1ctBLDmMqbvH8cCQlHHqfQA3clkbwQ0qkcJQ3
	 Co/x60EnYz2IfrOFV2zJ73eQ/vnnwexdUoZlEK3sVDGsoPN25Kqo027DpM8Rszdmwq
	 leFW5EdCE/xXzt1xv2bbRGLHAtZXI0d+L49NbJEvJ8EtMP6ME2831OnOPsQj4a5rWa
	 IGuzp+snuzDMhRxfIW88ihvipGx6YCesRCcvYgLFLp3RZLRP+qYFlWMlP6a4bPs0bT
	 qK95f4OMN36bfgaqY6N3IwMQBfQ0XLehATCo8KT1hGcULVhQUc5sqLahqQsteTLuKx
	 xgzWjMblH2Hww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B76FEC25B50
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 22:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167425392574.31980.3271573451995406170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caa779d82928a1a1922ae1b57e302ddc3b726887c73620a0a964a7f83ffe8a85
Date: Fri, 20 Jan 2023 22:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674253925

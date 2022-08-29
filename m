Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB355258D
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 08:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71DBEC433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 08:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661760052;
	bh=eL6YtEmU17/OY4ALPwunYGSmBX3POE8AHqfD7+VLVcA=;
	h=To:Subject:From:Date:From;
	b=DJiStK0fgYTmEWaUW+ql1BWmaNB1m0Z8LXauaT/xAKhElc/QC/tWAO8pLUMxOBHYf
	 4yVatcln2K4a0UeWxq4iREP9UOxaAsE26ZcZ0Gc5IS2y5VwoRIWcbQDNX3yvacg0Nv
	 JNQEQPtC07nHMa620wMLr0PZguXwW75/9B5HxVGcYvO0U8Rc+vXzlq2Xmo3U5coGon
	 YXze3kmi3NXjn1/1qoXkKP6XjfQlMK82B6LMogXmnNJh/Kf6+bSy0eoOAN/0b91EOU
	 36O9w9bC4fRXq3BrhvGyNplb6JXNLsV9vAsUWox4UBerWaPC7Eb2z348i7Mb0oUj1C
	 PbQE74xr81kGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55929ECAAD4
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 08:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166176005234.18578.16815193716742359036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78041ccd6810762d4d3d676a9c25213d003003c036f1615d5179aa90325e2d10
Date: Mon, 29 Aug 2022 08:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661760052

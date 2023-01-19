Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D475317CD
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 03:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FC33C433EF
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 03:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674099687;
	bh=axukL/lqqhxUNkgTHAzy2tOtrlZsMuQLI+oK9r37Ti8=;
	h=To:Subject:From:Date:From;
	b=PrIpWh1KKzUght1xThLB1L3EPe4x9jmaGEewn1T67N7RMOWuVkC/aKk52zjqDTDpN
	 r0jUlosVcByTp61RXLGI7XZj++j6xBUvl4Mf2nSwPP9oGNF1jlEPMaNBlTwCoRyYDI
	 rH+DfjraitRi1LuShr4jaNphrjseYe9gtccpf7ghgw0Dsh5Ol5WdMM1pwBB0xn4X3X
	 jbL6zc/TjeYwviKH8sxcYS86et1f4Y6bvSQxs2/5rgHGVzdeBKYZ/kpuk/7dSx40Yj
	 HHmdjQXlCJ7SJ8+NRnV1Hc2EGyATWXRePxB6B9BCBpZKsgy6O5PnwwNCKMhqYmveIp
	 O2ft+QdpGcFqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67516C678D6
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 03:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167409968741.3974.16860724755428004507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 040d22c10927cbb8b41d86286cdda985334d8a577e0fb3ed9fd016be884f4001
Date: Thu, 19 Jan 2023 03:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674099687

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4BA626
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n63u4P5/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEE3C433C7
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697846896;
	bh=cU+/mV4xXr2DbZaAES6Ma0PWwF4Qdeaad41tKNZfoz0=;
	h=To:Subject:From:Date:From;
	b=n63u4P5/MPnSJ7eol+kdvewFH0Og1jfCDOq+CNVU7/mjhbKKRuAjBqG3iv4qxrV2L
	 6zxxIdThYPYjn+8AJpT+vYmdj/YXnPIVX40zxUwdaxvRxeXLBuwz4hVvtARM1eknqD
	 6Yrv1FCHQyk8c5917ZTIkNQWlo0Z/DUA48cS02kpEbIG4FUs+iHKcIS+EH9FX/RQSz
	 Whkw7qPymT2HOlSeHrOEPQL7XpKk0ybGCGJ2xnn/fmtY7ruYoHfbaw1/U+ORDLbt1Y
	 vGnyTlsS87CU8K6LQuVHMdgBo5Ic2V+kWbRmxMJ3xYZD6Rvip/cAxmQw9AZfQgEFxe
	 lt1a5ZR2CR8tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C585C0032E
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169784689649.27555.8917995654570917749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63b9319492051ebad3616383278d08d2dc3bebd9eaa2d99895f48d249032c502
Date: Sat, 21 Oct 2023 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697846896

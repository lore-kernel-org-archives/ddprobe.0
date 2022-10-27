Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCCC2186A
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 11:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76167C433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 11:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666869054;
	bh=KH2HCsR8Th6Zo7SoAaCySc9nIrgwMrO1nqHmVT5acPo=;
	h=To:Subject:From:Date:From;
	b=dgQDvWFRP3zObWCHfer22IY+plZRYaTy0I2H/vUwpBJ6yUpDTy5vJmgwki6CB3Pye
	 kb2D78O+FqbeY67jqoyWUosU3lv9tjx/3NS3uSZYsLJTiLM3VwU3ju5KWjJcGDD5ex
	 2d8d4yRdy1FESjOmrarD3sQFIPQTwPsAHmA5HZIb7ydaDxuz0wbTmic+79vKRrY0gV
	 TT8nYsiWC8ppwSnce1Pt4i5GzS+h8YuDjlICDTTdECury0vucwUtyYAk06RGtRTR30
	 LEp4KE8/AgAQyrRTz5gUEtiD4tavqUHzjgQuEzxZQfkRxsVGRaRODPxPb9IRjGsOgd
	 X5+EXwCZF+FbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58F74ECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 11:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166686905433.4111.16080263677422857938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9970ecf83cc095be78937979c4726762e86d44c7057470fe80d3042af18dd4aa
Date: Thu, 27 Oct 2022 11:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666869054

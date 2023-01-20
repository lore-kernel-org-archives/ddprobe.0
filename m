Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81F53569C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 19:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 269C3C433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 19:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674241326;
	bh=XgFg20yWCwbn7qRkec1PMIWLFL+LqWEhAjhpazG2u9U=;
	h=To:Subject:From:Date:From;
	b=Zyk2Hx9lWKeaJ0uwmx0Uqowlcp727HmTJ39FW69SLSIcQV9RFvSq+8RTb/HKS+9da
	 1xNru/Joy+CX+jB1tVE7J7yHyR4PZVhe64PmvM6OlWdzDWorjnwe8fu2JBBtycdkEm
	 0+HZtuR+0Gxkkz+t4//uSj2c20qE8Bp5MP6sQb+WmAmBBuPjSHvbQPh1qQtd1PJBlp
	 3DLSuSXCG3ZOYVjqy5qf1JbWjTP3b5uqAbpgBPWnsZqCH/DANjvihJZRpNWCWWAT2K
	 3iPekIawVJ2ma7hCvTdYijmmw9s7yd14Zv3eMfh/caUT1VaMLZ5NecRBZ88nMMxAe1
	 UCiEB1DaslB0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB35CC05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 19:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167424132582.32660.4823079350641059368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a4e74df82022e6953caf737056a470a7f6ff616c002f198be869b74fb15d44c
Date: Fri, 20 Jan 2023 19:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674241325

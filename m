Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291C76FBF
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 14:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4479C433A1
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 14:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675433165;
	bh=pB3drPMhUCmKVt/ABbm0J/3RcZO88kiB7qv/D7dBZM8=;
	h=To:Subject:From:Date:From;
	b=Hmw1vIjXD96t1+4ihovMScyIteZtM1O4t2W0BaDu1RHUYMC6mpv0737Rr0BNj/kcy
	 BbUdFkgEpLsSxoo7VegQdWq3ifz6rr+JN0J6DUZvsPhEfggZ5HyaaWFnQNxiwz0vg2
	 V28aqxOOlwFXQ2y3N2GVnqe6TXbNELkMPjnF41keaKXCWZw8umVEM9IA/ISZF8NV7p
	 P4fxBEWpcwRticStJwbsNnpeDeBLUZ6LGAi9Bw/0k1Ud4QrEJmWo6sSILpSwiANJjh
	 LVOqL/SS88rRn6oX8HA5OmCm67lj4ZmJtMy6YOPtvMPKHwzn/btjl1STw4OrsM49bb
	 ugQppj4G36TVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B86B8C6379F
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 14:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167543316574.18147.5247756665721514127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1df3710b21c2ed00f579e476102878611baa46b03f3a5bfdecd3163c90f9d5ba
Date: Fri, 03 Feb 2023 14:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675433165

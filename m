Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9F63185C
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 04:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A2A1C433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 04:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688876829;
	bh=hSvHIQ5qEiE4rxTUJPhisl8tAlO6eBYUDt0hV7oAbdE=;
	h=To:Subject:From:Date:From;
	b=UdDvRjbnTMUoK2/wXfzbz7kIZQIg5nglxdcvmGsNJb8IM/QT6Vd2hs2tBrYIG4RKf
	 U1Ykh9RPlGfa6f5ivxyy1inQSAX/WAY3EzD3LCcqc6Pq1FYAXcFMOa1aFOS+BwtbzQ
	 EzDVdmudwr6+P/gbVCU7S15abNjnUbW4ofcGBfTlk+oq0pnAEJunuLQZIdXpys4mGu
	 t4vfuN4mOy2FzLvw2wx5K0j1i3wOv1imAp+mKMMu4ZF/sRx9iTqMc251ySUtQsybNo
	 5NwTFp+6V8ATHB9bvD5/EY5FXF+2TXuc1vzQoJ/y2yomh6AZh6t2MkuZLPRXFuIkfj
	 OAs6ZTMYIGfMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D300DEB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 04:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168887682880.26033.11338110861436208194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7348262d2477acc10dae900148e715aceda4d980e95ba2ba954fec3120e7e5e
Date: Sun, 09 Jul 2023 04:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688876828

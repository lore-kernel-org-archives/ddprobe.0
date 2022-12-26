Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAD357B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 07:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88FF2C433EF
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 07:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672039887;
	bh=k0onHhI+LQl4DmqnY1Hg0o1YBbMUrHNQN0X1q+4ubNk=;
	h=To:Subject:From:Date:From;
	b=L4yQpPhYzXNvqCORmYdZj9g/QAsIvGXU7fxaRpzfdJzDlWe0pcquJRCqsrcyd32xj
	 aPYuZgvZh7JpNKJxBtGuZjvzcea6ZvKnPvH829l3GDIm/S2QBsUP1sZswqR1q5DizV
	 GZaLPazbgjvEEn0lzP7Ifam8nxz3VYjkX4xVbLpKcHL8DF0o7NiRobH/zsSXTd2JdX
	 btdQcNp5uDVn+K21tg5muvltAibAnFlSH2ibG7ddq5vytc879D1c+ZZlH4ZNw0prh5
	 TttBn6Xly8v3JzqFAghFH0RLvafUYk2xWtqAjQ3jddxEMBvMcJnrsW88qLxHmAqXWw
	 MFnAccdxAHOWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69B12C4332F
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 07:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167203988741.8437.4111799436721843700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c0c8c7cd4dc5342173c5ca03709126ff631b5dd277fbd927ffa11067e3c28f0
Date: Mon, 26 Dec 2022 07:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672039887

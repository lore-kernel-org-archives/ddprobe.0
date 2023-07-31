Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D8AB1426B
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 10:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6AEBC433C7
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 10:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690797728;
	bh=Z1se2fBhluG2fWOf9VKwjIImeToX2kG53stLNCGha0k=;
	h=To:Subject:From:Date:From;
	b=fzAI3hOc9jEkTxwWJKtvNcAWV0FNyixuj3PDbNxIaoc3j4oZMPC2TMRXTb1XBws44
	 UHI8mnhMIdnqKCYD8U+FpGnppRWH4/JsyzUMf3BHSjZyNq4SXDvyAv0jEemHJEMQlT
	 FrATPbBUr7qwYT78EjoUbbhwOMpp+12+XveesjBP5f9/N0XhDohst3H+JkitoEdyvf
	 Kug/OKyujdUee8Mq/gAhepSwAAi7Ye02R+9Uh+Vszq0frLaZ9ao5ByhtA+Dnqdv9AX
	 3UYrESB8TpKBmnq8LS482/l2qF7xCWM9pFZ+QlNnBQDO5Aww5uKALax2bfzxE4Kw/t
	 1LeX2EI3HbwQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD740C001DC
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 10:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169079772869.32262.12909163736677881182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70b972f33ece0c158ca9c11ce0cc26cf0f70439e2eadeb75b20cf017a7ad5330
Date: Mon, 31 Jul 2023 10:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690797728

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C534415B2
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 04:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C5AAC433D6
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663130453;
	bh=0KSsxuo6FvlYPalmylERH6oXVFQd+7aiZR1PyEjtbrg=;
	h=To:Subject:From:Date:From;
	b=BTig9vzybWxyT37kAnvgaxvwCijbpmtKxLBs9IhmXAXTZBb+pYV+LQOaaScNUCYbS
	 B+quXISzqA/luHoi/ZncHos1fwoykzayoWAqTgaMQrR5GuVqPrjdt5wVNacg9M2QuX
	 wP3XdIKBkATBWaXw7tu3sC6nEvip9Xlg+jSXBSbUgYJRnVAqQlykpDlSz4Y31/U6Sp
	 RUkRwmlOVKrErCLtZzVWX8ux7ZvOJkxJkgF6z8y/8zD8U8/rWYoJg2hqW7U8Ql0xPl
	 ojsTsvIsgRpPvOFbx4rz1Peesjzr/T4c1JVPGaPfl2VWlNndFo8GO7zg+iiYZP7TOm
	 +aJQNAH8pclWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FDB5ECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166313045332.2606.13964287776089445993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9947d063c6310c67879b0a23ee6577ca02136ff28853aa12a47e9758ef63f1bc
Date: Wed, 14 Sep 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663130453

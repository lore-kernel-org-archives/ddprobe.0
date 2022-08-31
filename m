Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B55B265B
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 07:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EF7AC433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661932253;
	bh=KyBy6zvOb6M/RU+7ZvkOHn/u3oOiPHfnfGSfLK6r/zs=;
	h=To:Subject:From:Date:From;
	b=U9VB1aAAZYsMfalXsN6DASoo6dbJuRJJsYoegQ5tKwCxTndBy9G6qFZSNNvuJGOXO
	 pzDEVeI9w4EihA8TyoSiG9TQJVOTC4X9w2RKGfaIvOxKbGZUM8yIy8sR5GqhLko2je
	 M0TnKGYTwbbjCQl6RNXX+PyfnpHp0wcBvpDZMQJ75TaLZ+0l2EJ3aDQ09kEcEy6ISo
	 T2nLg0/vM39tI3yYuStJF5XsMvd2jiWbWH7HOJMQjWG17n02wIMVB9H/Nlf1PpCMkH
	 RO71qzYCbqfBsyiQT1ODnXmrgO2H6PYWoCwUzqEJFU+5rp+71hW/Z6qFc2QxIXEnAy
	 uYGEkszJwl3Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51CD8ECAAD1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 07:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166193225332.2895.6754204675579394885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 515b0b974fc48a684c91d53303eff986de63606a24e1b16e6a3f4d129dabbafe
Date: Wed, 31 Aug 2022 07:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661932253

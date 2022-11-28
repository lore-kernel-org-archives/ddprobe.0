Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC4358BF0
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 13:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74D19C433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 13:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669641654;
	bh=cMsu2XR4oY1g6xp+sK8X1nO7Dgc6RvMz7esbp+7D9dY=;
	h=To:Subject:From:Date:From;
	b=Tn75mBo5klSRK0n9gA0rYpX/YW5bRQSw4/8w1QEv8avZVveKVbVjGURl90+7J+HtE
	 1tdSePs9DbYqUN8lOhikD4zv9w/FeC5O6jhJx3TlR98ba42ul8nWyvnzEvQvAchirA
	 vMrMxXX7QLPAbMyP6KB+usBUvOFAdUQzNFkDKGSaxcBqhgmd3qgMx/YgLLcMhdroQB
	 pMQxDmNFvr2GoBieTgOx1RNwxwKoMYI9QbhaU98saS67zTPhzCMuGXDSWA6N9LziAq
	 QOMHIO1U8/FASWXjTAdTS+82Bxg2VJl+GXuBpw+BGmNJQelL7beWbJWOtnKydRMe3Q
	 KI9eIiYtnszLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B39EC43217
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 13:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166964165436.9575.10462018137482421797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2776f4c08c64850b4829a7b174575dd2150ce61228e357b3e3c22e5eab48e992
Date: Mon, 28 Nov 2022 13:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669641654

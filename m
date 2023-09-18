Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309CF7466
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 08:05:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9AE8C433C8
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 08:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695024308;
	bh=RjS1HSwQLUIwFGgpP8yaevLDAO/Fm6IbucczEWm+mkA=;
	h=To:Subject:From:Date:From;
	b=ecjnqknYIpC4NxsfCfu9hh3Ucoy63b6DoJRrXZ+bf4qnH4BgDzQ6WfiEsKVNIhwL2
	 0nK+eAcPebBiWw1kLTyJ/uNPjd8Mv7L73OcB97Qv+s+4ONYdC8i4Bs4AudwvDzxJz8
	 +jbS39Z29CnLyHBuZN+6kKQ7AOICG/e3O1WYRudHdo85sd7YMGd5yK3FWC3FqEULoq
	 JCImZzSvq0Nn4e6GmhggB/W2xgykcTk1oV09jn+XKGOSR923iwZNqOi4YJq8byYSET
	 TP7DtEwI5OWtTQz2KinDt4uAbWnMW/B/E0k4+K5fS+eRIvMlelIL6ZF/f6oLyc0giN
	 CquCrOuxy5r6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A35E9CD37B0
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 08:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169502430866.1233.17171194505141818441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e61909f258e7d79f2016c01aac593c90d27a81f4d066182be8ff80e1567071c7
Date: Mon, 18 Sep 2023 08:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695024308

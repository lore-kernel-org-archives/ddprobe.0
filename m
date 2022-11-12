Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D401F7E
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 02:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C8D9C433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 02:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668218454;
	bh=G6aif0v3KjqYhi8+vso7HfBDHLGm+yDW4TuKiYiFYm0=;
	h=To:Subject:From:Date:From;
	b=nuuv1Y/u7m4eEsINJqUjw6ukAlHJu1hwzFjA7xVRrx8of0Bq6VZvhu17+fkItheNF
	 TLWm/yd7KQoznOYSxnev1jCznnqS7aOe5s8BdpxCniloOcyropInR1LgNEFvbaHF2j
	 OaB7PoJ9vtXwaNYOatbdVpOcS10/QVUlnY7dZpyU8YaDMYD1cERhckPRtYXHYtld7g
	 cdqImzjfr4bxavwfYekZ8DSq4dGWLdTT9uOz0M2L0socA9vA56f+02bv+MkTFBkUpO
	 M9yvt9Trg2SxFbDed0H7qhFbC38LVq7TPthMnNIINxUR09qmtL7qvaHi1nX6yHgEA1
	 LvKAcfOQ35M2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 590E8C433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 02:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166821845434.20551.17265441691522427451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ceeef0e94840bca3d975f98cc55bedfadfe77b97b5538c21bfbc99cf2bfca91
Date: Sat, 12 Nov 2022 02:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668218454

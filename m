Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B722E33CC
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 17:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FB7CC433D6
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665421253;
	bh=k1I1SIv6V3tsEtLe3SJCVwtCS+pzMz8BMWOmrLPZTmQ=;
	h=To:Subject:From:Date:From;
	b=TwvwdKY2t9nOJ+chesng0QioZxNst/aHlcgM1ITQ3AzZEVlC6HbWpFav0zA7r4VAh
	 CVBvdI1Uex3NNdG4Zv144Gg6cSAGFO+2PxtmzCAxJHVwhhZy4k4wgzYWWVw+VoLj1J
	 E7MbrCC5ZXqj30Edz1ZrWJ/BCLWUSErWxfwxptT7xSJSk7oJq9JcCPNy9Vzkvx9BwF
	 YXrn6GQsDD6bqF6JMAJzjq7fk6gFrkAi61WdGUrJw7hss7yZJbQR1xtRO4+7WrxzN7
	 AeDZVq8fSoVx16xhDXIDiGjP9UJB3o2sVvVKtFpdGuNcDGWUzyFgcEZat/RWd/jBLP
	 lT1jLXHeBX+Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55BB7C433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 17:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166542125334.21508.6894199917138667689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdf2015d1e61369400b5caf3273fd08d400aaba097582f94b7d2099a853fe885
Date: Mon, 10 Oct 2022 17:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665421253

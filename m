Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9B5023A2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 17:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80976C433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 17:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671815487;
	bh=UxjSe4LoV1DONsWXC7uBfA/BgFSp3ccR7jolgRkTU9M=;
	h=To:Subject:From:Date:From;
	b=qSs7zgLgM2FHuZbkQZnaxxvCpBVOAKKSxuGWELN7KX47ETi37GN/2wqqCAYX+fKid
	 NyGDKQUOh695FWvvMQgz7lfD+d2vB5btVm7zWzOs4LzCiaoU9XU8kG8Oh1+Y18kTqw
	 09u/ib6ouyPplZ9rV2+Azy9w7LnVsA8PPysyDfwgRxG8XKrAXKxadUtSqDRfjDk9OU
	 7HEp9p5fwXcq0RLlam73i9ELkOPII/wI5oWJ5PkW13SD92qgPjekRC84qH+ov/K87a
	 b0zluzTQUKlOCgZaMNohwfhExICtGc1rmnrMvI5v7j41Adn/Nymiw0NqErkH4ELBPk
	 v1inI9XloonzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6529CC4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 17:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167181548740.24411.7116580781550418156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea4e622516066304d8345f72b047d10009b8560a73b6246215188e6075c16561
Date: Fri, 23 Dec 2022 17:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671815487

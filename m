Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3FD97F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B9B6C433D7
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662885653;
	bh=HqZ+HObRJp4Cz/c10RvtmHwP2hrSU1JPlWnSTsHWfzw=;
	h=To:Subject:From:Date:From;
	b=jrKsyGNPuQR4vHTkjhTlMQgBg0HwMy/6SKYsXd6dsAOYBObvhlvdQUwNDpoSu8F4v
	 SJSidFhiYSZ/dCgNNkiapmfNCX7LrDJsMvCqWvpsHZuz+NJxGo28cF2lqm7s2uj09O
	 XAd72QKo9VSK9PWdUdSKYrNB/WsYtEqY77v9MFNMdKBzfBojNUJoe/nMY0Nv8SVh5g
	 FzQKA9K5tZp/ZvOeeUms5XQHOpi6cD2LjREQybfMDuP4NsKjdBzaL/Fv/2l7aQQe9S
	 zSs+Gdo37itHYbGrizKjHsVUC8bAvuOSqSn/3q2++wDi0eJQKe0fOU6uFhBLmvb0dH
	 uqBD+aRO2AWng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E8B9ECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166288565331.28210.2501512752363763344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8291c6a9831f3b76dfbc19191b7f960cace2fe2627aefe0116837474b15ecfb7
Date: Sun, 11 Sep 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662885653

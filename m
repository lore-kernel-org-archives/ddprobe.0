Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C50607E36
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 23:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FD40C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663717253;
	bh=kSU+YbpRVdm/4CXioP9xjrzZ7yy+Nws0f9/VyglqQLs=;
	h=To:Subject:From:Date:From;
	b=sr91RQoJ5aQ1He9lhEZo7qKHj5+Ecx3ksQZ/BymzVhET98pizWi9z2rOF1+Qqksox
	 TRTJMCy8sLnqLg9slSFb8VzPqNq8T7rdEi3p1pkUjMqMHvZxmtqJH/ZkQUPpgLiS6R
	 0Y+TyhwJRNCIzzB5Zk+gZc3jK9FKtUDBLuyJb8p7aq7CsoeOMAHIn0tOtnPqUe6NSw
	 7Ko7PeWtt37TQ7c1Ie2OzStvSe+2tcCb2lgLSPdUb8Owis18R9EN1G/6j87LcpgDk4
	 AFTddZEAGbaMAah6320lrhBr1E7AdMCdXpfsFH79BYkZ5TT6I2VXdzv9A2nCzuaOa9
	 H51LhMe9tUv1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 574D4C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 23:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166371725335.23440.5651507920672142942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce5b7bd22477647068a46a7ef31cc4d162d1ad0fa09d1ac94209c09cf08c789c
Date: Tue, 20 Sep 2022 23:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663717253

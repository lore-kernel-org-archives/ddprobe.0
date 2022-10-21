Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE4F37E
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 02:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70D58C433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666318253;
	bh=3nNE/acrzVb95WpY2AONt5SMAk1VKaeTF2KtpfAucl8=;
	h=To:Subject:From:Date:From;
	b=Dn6fJ8YPPyUndOgElPgBoFlxOAjuolfRpSEB97z/sZi7wLRdHO1UPvyHq91SMQoYc
	 wCW0izYtP4nq9zTiU4jAMYpFvpJUJ3ShMZof/QIoftANeWoYGSt2JULwLmxuBsTiN+
	 Ji6+KEpSFFcG347XcAZ8rDbAdikEAYXoYkw+9msce9ytnH/gfgR9rRhZz6RsNth3GB
	 dy54Wv15QDVEo6cXFvrhnTkrHuZ+HBud20GZ2WLoePU2WTXZzpm+NOk72iNqPizMxo
	 bIRpJeqUJRiDv9JHH3l0ygADvzeGCtbInuLfhMfKiLifdNaxTb5g1+wICmS/fEuP8N
	 lkBdrRX1U2itA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A659C4332F
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 02:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166631825336.28636.16995625996878739976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5e7b343cc33ff44a686db717035db45b41145154debf896b5cb718d0fffbc3c
Date: Fri, 21 Oct 2022 02:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666318253

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBEF064E
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 14:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C98FC433D6
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662734453;
	bh=pJJEVDWLYPcfMcDE4OShnwJxkj6+u0EKQWcQZSPViU0=;
	h=To:Subject:From:Date:From;
	b=OsmkBjpxAYh3CzVtODrT6fzixG+3/V4AA9XMfsnxayEeAzgbGbKMMwNUXan7XLQb9
	 SaLrxUQatxxobdjQTYs8lrffz+Aezo5gt37T5SuPsEjpLLPm43UWYPKasibsbNuTPP
	 NoBlXv+fDcpBVTbVP+7MxRlDYAcVcjovFrIkZ0ZKelf+89rEUzf6jQwU7KpNURgXvj
	 sZu5UIrbIr4ScgndLRNsopSN11ZDTCEwoMxT7qgG/janhX3KVsl6nFw//kFNuj+LvR
	 CAtYweSYivWAQVz+hDI7ZmbgEc5LxCEb4zPEg65zztcVZ1Nq5Khydutn2xpVoG0WrF
	 apSAHl/OhOuzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52390ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 14:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166273445332.12723.10997280645944554718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8505a36198a4ae18d57e03624a79078fa091c05fe9de9fe6a549b5649418a891
Date: Fri, 09 Sep 2022 14:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662734453

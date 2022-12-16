Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D34788490
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 19:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E74AC433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 19:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671220287;
	bh=4b+V0Se7tgHNJyxFSIvgoslfmSBDC9+qB+yxDNA9cHo=;
	h=To:Subject:From:Date:From;
	b=BBksjjCLcYA6VzIlaEhH7wujhycRvcVMRlaeWB+4CE0R+RR683Ym1OwIe4686MWfn
	 A0PhK5W6eJvOcoR+C9nYXGe6KHut38WTT+FcsqZ/MIyCM8M8rifveURGsgp96UUHuH
	 OyKs9ZrdXEu7qtUGhtuJ9aFbNTP2PACz8VinJqJD7FTAPc+g3PxpARtroRHwMSxLel
	 O/TOFZCb+bTeseI7i6siaHO4VliPLgKpFa3wUO61/4wMmexCKgdhYEe8f9FExdqEhr
	 PCHne0Xo8vilvk4N73GvUycDLtW44zHglRd6nMyXo0n7+Fa0ozSaW7nS96U1lKvP8m
	 DtXc7rmVppdbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6591FC4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 19:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167122028740.17562.17228812329744042060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c91bcede50e0634c9634306406ed1731c952769eb4cb906556569615a5922c65
Date: Fri, 16 Dec 2022 19:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671220287

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EAAB1D6A7
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 19:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2443C433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 19:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695150308;
	bh=EAFFZic/8L5dbjozZVvTSEvTrAmRiCf/8UEg6t+aTGI=;
	h=To:Subject:From:Date:From;
	b=uqKCPoiGlFeR2MrNDEKEgYCPpOJKN0BgKSbR5HEH18sYUi3iIoE3YbusuSGjJaM2A
	 BVwXGQKWyS/kpEXa1diuYM2A6SwWSFp3O3hIbvleKEBSDMC48FAxiqIR8/Q/pLoKzP
	 2dVtvYMhcqU0z5UU4thLe9K7RfqgAOyHIymHj+NPwyyJ/2G6AUh7bSihFrNTSnp92Z
	 lhPD3s/o/k3XCOoUBKhes1LiQQ/W6WQBAvDK7amsbSf0K3p6gGMTJGGtI6pXpQqOM3
	 lgzsIES4CLOy9OX6hWfBE9aCqYEasqBnTj5fAieQc9Qapp5bPSwkZ4VdXN8SwLairJ
	 j+/lAGsBhensg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF154CE79A9
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 19:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169515030870.13169.13622116436546034048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 236f88011662b40615c549f717e9d47f72c538e2d5ef5118dec9cd0be2791fd9
Date: Tue, 19 Sep 2023 19:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695150308

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC4BB3214
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 21:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78876C433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 21:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670621487;
	bh=p31Fp57BmmkJEQBlP7h0p7v5dNuMGwa4YdUdvdNdN9o=;
	h=To:Subject:From:Date:From;
	b=VYCW/JUhgoZ9HWiYTATxjQNt4hwSw/c1T3sCspaGoCVBXWgrsSdH+xUETJEJ6EqZ/
	 nlJNiKpHG4W03iYvThAZdy2CwnqxdFqIu4DKHSvyrNfyYg6W/Jcu6Jnz9nLu5A8kqu
	 auWjA4LHxLYIGm599io5DSeLRaPpZWkmpLXqZufZ1SfYnlB9t0sno059VDEJJnyxtl
	 WFxnsEO7fZVnXMeyZLwbBQtE/822zw/d8YPY1yH/lRK3NrtVTc50MklUg/sl5w++jO
	 jOTMqwUY+MGsk3Q9u1puKMVEdcPvZIuEbEIJbxQiroyCiHW0roDsUXGMYSnOYxjCZd
	 V6FLYDBPG7vuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 633B2C04FDE
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 21:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167062148740.30797.13618415288666504182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 004aee561ee3f8d69391867789b064901f66327bb838afff7471d54d804a6ac8
Date: Fri, 09 Dec 2022 21:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670621487

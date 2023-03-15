Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3D12F25
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 10:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE9BC433EF
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 10:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678875605;
	bh=34mxAMhSmJtBlGsm0UH4MbPSmhrphPCfhMo+YFqBDzY=;
	h=To:Subject:From:Date:From;
	b=LhBv0OGWMoYzpgYdez99rgYmFOGiUoFFNK8ISGRnEg3I+SFRr1JM46JD4gVaXF47d
	 d0MHXEg5IjMJC9MCZGyw/dCFO6O4qhBas7XRPhe4xauaVW7W/6hbOJ3mGh8xQBEtia
	 6bgV0oSL8OuvoYPNfjSMVxTPRWiNsqTnX54Eh0ZZ6/bTYcswkx9EunePONuMaud7u1
	 YVZOKjhhpgyDlUivfRVdCLWkkIMM9eL3oeC7G6Egn8b24tU4aLLnBM4qNfQGeTLKDo
	 DByl/uBeAz13WpNGvQgSN2c3RK5GPSTKUTtMY2jDdXde7euLdjpc23xpxwNfb4teVF
	 IotFNJyGg9mww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1647C6FD1D
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 10:20:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167887560577.27398.18357553612400001255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 018a6d30a5c9dc3d44398609fc3a8f1b2285f7bef12853e7d44f4cdc181d722d
Date: Wed, 15 Mar 2023 10:20:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678875605

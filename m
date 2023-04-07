Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DE6A2D
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 06:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFFDAC433D2
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 06:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680849485;
	bh=Hc0MJ1PO4gJPO4oSdiGlidxvctbdzxNv8bYxNd33zyE=;
	h=To:Subject:From:Date:From;
	b=RKfxGC1GqYenDVgCF/5YsZBUdZUoct1CMVwz2vntoLGk6diTPsGdfentGes5ntnp7
	 nxr7xLdY8EdOlzxogW3b3tfwwjW683TXjmvNz2vNVt7UW2TFeVBcgJXgHfiblic3/e
	 TqtJ/agQjcfhCoSakKqCdB5TOD+++HA3GozMfj8+HeCJ5QrlrYF3lwgTg0jAgYwy0o
	 xPZ1XFMwzzTWwbC+0R5B5vDBilEylbUElmsQPtWUHtUn1BwP5pbZ+iR5/k3LNM2eWC
	 cj2+KDk3OE7HyY5aYAaXouSZFYV0holwgj5h8J8o8LwagmhiXQkmDraLoeC16fGmd+
	 h+lSFaG9g6hfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C07C7C6FD1D
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 06:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168084948576.415.4821301405022387147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17fcbd1363b6f279fb4d84698159674833a7f033fe89100edc3796801f09a490
Date: Fri, 07 Apr 2023 06:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680849485

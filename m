Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C12115C8
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 06:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD5CC433C8
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 06:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694153048;
	bh=LwCbQDq2lP48b9sDmCl5VTvIQpG3GqSRx/I7r2mzx2E=;
	h=To:Subject:From:Date:From;
	b=FmY1bHnjBFcapmrR1OP6xdEcr1ol64fivLgUZfTO2QTBh1FXn8uEAZGlKcuUVMw7J
	 bgfNDQ4nEHe9rF50oIas60q05CcqlUHtk1VbjsP3pXnQqqU+vZrDjhvLLZjb/T9asc
	 /SPPTmpiIu9lIsvvSU5jjVNWn5LbY0KakUMUS6aHL6ZpSGYCkdDX60xWtMlcs09J/k
	 KB0RBldNTdl4PD5OD3oocXB82QTlQ4C7mZTgUSfDX5wq0jlxTKRqUDohwmhQD0oQHk
	 IGusfOAZXcsBoQt4U82tmjn8AUTigjEGUUjPNuQ8kXVrJImUUvHd6bbrm/ef2ZRB2M
	 yv/U4SxY6kVfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA42AEE57CA
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 06:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169415304868.6377.4569118498327174294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef25e1f43ae144de935b5a47792e146f7526f6cfffbc801de8066d413d6bae01
Date: Fri, 08 Sep 2023 06:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694153048

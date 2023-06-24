Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543AF46BC
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 17:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC21C433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 17:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687627388;
	bh=CK+GhGF32itnQlgo4nFNGjBZ2fsHJA/R4Kq2dnIOVDY=;
	h=To:Subject:From:Date:From;
	b=Z+NYv7JcAWPMkIgXoJcuX7x9acwVDytpO4cahtEYmH2Q/2LEkQ1BxHN63+bX5YOGh
	 ynfYSnNQ92/T4tm81lEdRAjt6IbLs7guKjjvi/mbLjzl4kVgkZ09se0yj9WJd6bAfl
	 fhId59Qpu+mkPCbf/WZ0QElrbhczC8zx+wRR5qQAOMBPxhqfRtnFbUrweiTbAbaa1c
	 Hg1yRkJyu8cO0lAoAlAHMyc/Aw06mJK8Tkxl3fFEUjEctGg98n2a/4JT3swngn+OCj
	 KrUUiARKdV02xQgfkKgCYhhpaWe7aeJvU8eKJOJMXJQ4f9IBcTnmtUEy6CD3VS1+d6
	 bx3zqPVn5APxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6559EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 17:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168762738866.15825.14205145712467805245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46dcbb13b3969c2d71707137a91573f45ca90c2f0fdcb7848690ef8c92529144
Date: Sat, 24 Jun 2023 17:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687627388

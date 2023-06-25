Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 652D97C
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 07:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D73C433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 07:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687677188;
	bh=ji/wZz0QJKqTlMmDmCunbJomFBkTf0mJSiRJ+tPgVLw=;
	h=To:Subject:From:Date:From;
	b=GNlUkELeq+/8XRno07DS9MhTSgnPVAfs7oH8IIZ8A0ZBWFEMh40bPaEzlq7bTsXOv
	 jCWmOBRJDrP8aXaV/lXE20qNHRvbcbvLmraGSnWXo0XyXAxesYh2el+iT7FivSCiab
	 w3TTAA0yZOM7BBqq6mwyzvNGHckMHbx4qlMCFtxl6I+fMxRI9KCzuw4UFWF+UZ9yyp
	 kYAEtfqpD1Ta91qCsLAy16rBX6y6xdgBn633wQD5wYa+FtMmWNtlHeuHNClbJp1/Ht
	 Y4BpdEfpnly5Wk+rUSnm+yLt9CGfY+hfuqXZDJxbmhE2SGcGAESF4YRgfzA54RrxM3
	 T5/GqrHmoGI/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3AA7EB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 07:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168767718872.25207.8473800669940659032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd5682a1b42b2fc5d0ae1e561d1713ad3a7797f19d2bae7015e2d2423801ca35
Date: Sun, 25 Jun 2023 07:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687677188

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D0563CA
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 19:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC85BC433EF
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 19:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681500785;
	bh=y8R6eX7dKkg2OQw3of4bpdhGrEqOWu5V+br87SNrpLI=;
	h=To:Subject:From:Date:From;
	b=jtGK0issvNivTAjqOM23tV1oWbt+Jr3PJlNa0CPXAqfB9aMNz4nn+h/b2Vxm87j3w
	 YJBkIe4b7zoouTCsqiig9OWjhCN8ueFeS/QxX9P3Z2uqmPeNFT0QLBgo4z7me+LW2H
	 BEvHuASbIEX+93PKS7MLnKSeu1qgFMmFkPXu2duJXN8e7M1dcHm/LPnu3xtgFCY/SC
	 LEB8l4ueEQgqleOMo4lNUVge4TUZtz0RicsoxuNHqb1apiLy9BGCVomcBrj3x2xMpB
	 Grx3gQYEWQ86cyeH6lC5syHwMDW/sOesCvkApyiw94Pn7e/iYLRmkDNrU/0x/lVgA2
	 9b7pAyTRbhehQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D0FC77B72
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 19:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168150078579.31291.9904438796023434589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1da87c354897744e9b15fb0284299df32ba052d6eb9eef127a178608040aee4b
Date: Fri, 14 Apr 2023 19:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681500785

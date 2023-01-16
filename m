Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36394ED8
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 02:01:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA259C433D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 02:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673834487;
	bh=nkAKP2aPVQLdQO2zrJmrOk+5gcCWaSr3lEvgo7grd3o=;
	h=To:Subject:From:Date:From;
	b=V4oVoQ5wmlcuGA2xBW4/iAVDK7hvTl94A16mtoXw72F50And9lcQGoN+PnGkzqcMz
	 Rbxnw2NIkLqPNQJC1nF5O/ug0biav4tHcCynwYjuE+qhggwDTlfyweeUHVIR15fPZu
	 UfJdO5lAvbAYQKi9mWcVaf9IXL0sAkZTPDA0TBaIaSFxza2Iaj8yqIiDawf5+QFBYP
	 PY+I9jkZ8wA9gp7RnEQHUto2sfj2KIx5cHdbZkcPUNoOtKVQXCHNMgUK55dcTNX+Wf
	 wZIveuCSSmWTViD/8WdNaxZ5Z/GsdUGAkKRUhgmzSHTS1nZsQqFZPhI/ZdSJCZgZgI
	 3ypoRagwd2zRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6D0C3DA78
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 02:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167383448764.8695.17614096259911252994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a691f245f17bae977a6668df6a9627db36fe621a255e0dd385425bf80015525
Date: Mon, 16 Jan 2023 02:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673834487

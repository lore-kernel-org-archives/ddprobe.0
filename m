Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7D4D2592
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 14:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 701FBC433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 14:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666968054;
	bh=7ThAt23jDurCUFa0KkLjsI5mr0Kqmkp3VIaqlEkhd4Y=;
	h=To:Subject:From:Date:From;
	b=sF1mNtobvzu7Yz9PMTmjEM15JL4FkI0bg6w4BAgwML5IDnyIu2+dL2DFesES8rjpw
	 jRTyU9lQCgHkpuMgdQQcNeeVBDqn4DyZFH93pfn86rRffSDRuEEf9gvLia/DqrHSZ5
	 VhO0AFli/GCGsHQ2cgMy8CZOcwQbxbATOQtM9M3W1ul2/eKPcslfhx9HyGFZd8nGWb
	 p1EEVGEgQWA6PgmgBqsYm+pVf5fQOuuX4WRkTUKO9oNBeYMwLlEmY8DExi9DWPR4z3
	 olu8QToOTzRU0T22phI+EWZlo6ZiluRWmgVxY5ltXUTj+79NOr1Ox+rSAxZbxWrL04
	 tkDznwRRAUOKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5495AC38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 14:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166696805433.6470.8964166435384863114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab33f452a10f227e82a6cd150bf3452d24e05668cde29a27de492fb0cf86707a
Date: Fri, 28 Oct 2022 14:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666968054

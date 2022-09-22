Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2E167C
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 18:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7156FC433D6
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663870253;
	bh=moYl9nXHw9XFrsoZomB7rqVIFE92MuSdtgEIxK3Cd1w=;
	h=To:Subject:From:Date:From;
	b=SWwHUL3uq+MefhRoQpRbtqBUZ9yBwJQmuFz0qFP5BGnQUlEs95bSF0qYm1XtnSOiZ
	 4OKFWRd3aEjDy6+iJ6GHAAfJac8Ko6wLOqZhU+VsG+0n9pmvyJFGqjjjDI+/v4IW2h
	 AfUXG/R64zv/FhL6/b0vvLbz8Blb921Iuwbu+/Wn+ZMFWJ03nmHRKoPyq5KFoGNQN6
	 skLBse8wEEbxlb7TqVch404TvjMn+tMrqI6xZegJT1znVsTt08E3oDExnpXoWFblL1
	 o/QdHqRimW3tTHzDFOn/D1C3gXWlq0lclgYAZ6/mgb5DwhBkA3d1ZRClxQafIEB2U8
	 iAgm3SpwCULOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53FF7C54EE9
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 18:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166387025332.19287.16606783941509870102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 695893e6c2919fc242634af5a8846cd6c6ba9a9f9ebbe44b4a057dcc14200ded
Date: Thu, 22 Sep 2022 18:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663870253

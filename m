Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFDB97B
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 00:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D4CEC433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 00:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670804487;
	bh=a1ZaP/nN6ZvE5AXfesmJtHQG7MZZAwcLprSAklgpzPc=;
	h=To:Subject:From:Date:From;
	b=UamC7dY3EiY7eTHth4tnjiQV8dXaljEFT+KiXyJuweS+5BWHSJdiIcgtvRwvevAQS
	 7jmFJJyDyOdJvC+E6iA7+dToeV84nOfK1+/gmo+rMR1Z+MrLdCFUbaMlMqHGKF45gm
	 /9M4fL1llt+GQv9OPMZ+RTWAujfOcvUoGxfele1k/rZF3roHndGSfbMN25bEEmBMx4
	 k39L3hZMml/v/b1MMKIjKYZCtp9wP0ffWWhw4H2p0ROPrO+1iziPu/L2BzrWNLdU7V
	 OT1Ek4rDyUxEqFRRl/cBZvRZxolmq35uE7FTRX9nXGk7r8zA3Xkq200enYe7/POrRh
	 sU9bnAllD9lyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61BE3C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 00:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167080448738.15325.17457785263894715287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 722ad13f39cd7e0bd681fd50c3b1c695b30d7e844f1b163c42027554b3db2413
Date: Mon, 12 Dec 2022 00:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670804487

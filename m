Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55F85185B
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 12:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBAB7C433C7
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 12:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692620648;
	bh=yUmNfnhccIMGoL4s6/is4WtsuPQ/nJFn0GUUkUHw1Qg=;
	h=To:Subject:From:Date:From;
	b=MXzEDEDfQDcmzsAxNmAmTdhbahcKztMdAo9KvcyEtcRmXfG4dnrEx9DqDt0Dq0uGK
	 smEtXazxbhZGqyGfRT3nOMAxITRSop80dY7q5AkMVx0n+od0hVI1RH70iJcn+Z4ZZ7
	 a58IBari534ovhu9/pwsIbNk+J17BrCRzjX/AJvxOnkEU0+b0DWKPjTywgakLH8Oln
	 Ip5rM0fFT/e7HyBYEOvLjR0gc/1fk44fUiJkKCHYEslvKc7yJcGJJQcXtPQ1pq8iQs
	 niaseE2H9mD8D+HbdGqqg0tBZfcAGh33Y3vcQ68PRN3J5FnyLo/mB0JDXOPAu3aGvN
	 t6Bar8cKcA+fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02F4EE49A6
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 12:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169262064871.9788.14619858405942217228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67c355c3145ae2dbfe84bdf6bb9f508247aefb928f9492c124ece04b53dda5c2
Date: Mon, 21 Aug 2023 12:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692620648
